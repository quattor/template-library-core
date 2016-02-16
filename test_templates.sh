#!/bin/bash
#
# Create one big profile including all pan templates and try to compile it
# (optional) arguments:
#     clean: runs git clean (and will remove changes), to be used on jenkins only
#
rm -Rf ./build_temp

if [ "$1" == "clean" ]; then
    git clean -fxd
fi

mkdir build_temp

tplfiles=`find . -type f -regex '.*\.tpl' |wc -l`
if [ $tplfiles -ne 0 ]; then
    echo "[ERROR] found .tpl files, should be .pan only: $tplfiles"
    exit 1
fi

# panc-annotations can have issues with multiple threads creating dirs
echo "Testing pan annotations"
find . -type d ! -regex '.*build_temp.*' | xargs -I '{}' mkdir -p 'build_temp/{}'
nrpanfiles=`find . -type f -regex '.*\.pan' |wc -l`
panfiles=`find . -type f -regex '.*\.pan'`
panc-annotations --output-dir build_temp $panfiles

nrannofiles=`find build_temp -type f -regex '.*annotation\.xml'|wc -l`
if [ $nrpanfiles != $nrannofiles ]; then
    echo "[ERROR]: number of annotation files is not the same as numnber of pan files."
    exit 1
else
    echo "pan annotations ok"
fi

cat > build_temp/test.pan <<EOF
object template test;

# for quattor/aii/config
'/system/network/domainname' = 'local.domain';
'/system/network/hostname' = 'test';

# for quattor/aii/ks/config
variable AII_OSINSTALL_SRV = 'aii.local.domain';
variable AII_OSINSTALL_PROTOCOL = 'http';
variable AII_OSINSTALL_ROOT = '/base';
variable NODE_OS_VERSION_DEFAULT = "sl6x-x86_64";
variable AII_OSINSTALL_OS_VERSION = NODE_OS_VERSION_DEFAULT;
variable AII_OSINSTALL_ROOTPW = 'DUMMY';
"/hardware/harddisks/sda" = nlist();
variable AII_USE_CCM = false; # don't ever set this in real templates

# for quattor/aii/pxe/config
"/hardware/cards/nic/em1" = dict(
    "boot", true,
    "pxe", true,
);

# for quattor/client/config
variable QUATTOR_PROFILE_URL = "https://server.local.domain/profiles";
variable FULL_HOSTNAME = 'test.local.domain';

# template metaconfig/ganesha/config_v1 has it set to undef (which is ok)
variable GANESHA_FSAL = 'gpfs';

# can't be undef
"/software/repositories" = append(dict(

));

variable OS_VERSION_PARAMS = dict(
    "majorversion", '6',
    "major", "sl6",
    "minor", "x",
    "version", "sl6x",
    "arch", "x86_64"
);

EOF

# for quattor/client/rpms
mkdir -p build_temp/rpms
cat > build_temp/rpms/package_default_versions.pan <<EOF
unique template rpms/package_default_versions;

#variable OS_VERSION_PARAMS already set

EOF

# for quattor/server/rpms
cat > build_temp/rpms/web_server.pan <<EOF
unique template rpms/web_server;

EOF

# Fix missing monitoring/lemon/schema
mkdir -p build_temp/monitoring/lemon
cat  > build_temp/monitoring/lemon/schema.pan <<EOF
declaration template monitoring/lemon/schema;
type structure_monitoring = {};

EOF

# make one big test.pan
find pan -type f ! -regex '^./build_temp/.*' -name *.pan | xargs sed -n "s/^declaration[ ]\+template[ ]\+\(.*\);/include '\1';/p" | sort >> build_temp/test.pan
find . -type f ! -regex '^./pan/.*' ! -regex '^./build_temp/.*' -name *.pan | xargs sed -n "s/^declaration[ ]\+template[ ]\+\(.*\);/include '\1';/p" | sort >> build_temp/test.pan
find . -type f ! -regex '^./build_temp/.*' -name *.pan | xargs sed -n "s/^\(unique[ ]\+\)\?template[ ]\+\(.*\);/include '\2';/p" |sort >> build_temp/test.pan

# try to compile it
output=`panc --output-dir build_temp --include-path .:build_temp build_temp/test.pan 2>&1`

# use "$output" to preserve newlines in echo

# will always fail, but should be due to bind problems because there's no actual data
ec=1

echo "$output" | grep 'element does not exist' >& /dev/null
if [ $? -eq 0 ]; then
    echo "$output" | grep 'bound to type' >& /dev/null
    if [ $? -eq 0 ]; then
        echo "$output"
        echo "[OK] expected panc failure due to missing data."
        ec=0
    fi
fi

if [ $ec -ne 0 ]; then
    echo "$output"
    echo "[ERROR] Pan compilation failed"
fi

exit $ec
