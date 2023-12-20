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
nrpanfiles=`find . -type f -regex '.*\.pan' | grep -v yumng | wc -l`
panfiles=`find . -type f -regex '.*\.pan' | grep -v yumng`
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
"/hardware/harddisks/sda" = dict("capacity", 123, "interface", "sas");
variable AII_USE_CCM = false; # don't ever set this in real templates

"/system/aii/osinstall/ks/xwindows/defaultdesktop" = "GNOME";

# for quattor/aii/pxe/config
"/hardware/cards/nic/em1" = dict(
    "boot", true,
    "pxe", true,
    "hwaddr", "aa:bb:cc:dd:ee:ff",
);
"/system/network/interfaces/em1/ip" = "1.2.3.4";

"/system/filesystems" = list();
"/system/blockdevices" = dict();
"/system/monitoring" = dict();
"/system/kernel" = dict();
"/system/rootmail" = "abc@a.bb";

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

# fix for multiversion metaconfig
final variable METACONFIG_LOGSTASH_VERSION = '5.0';
final variable METACONFIG_ELASTICSEARCH_VERSION = '5.0';
final variable METACONFIG_KIBANA_VERSION = '7.0';

# required metaconfig data
prefix "/software/components/metaconfig/services";
"{/etc/cgrules.conf}/contents/rules" = list();

"{/etc/ctdb/nodes}/contents/nodelist" = list();
"{/etc/ctdb/public_addresses}/contents/addresses" = list();
"{/etc/sysconfig/ctdb}/contents/service/ctdb_recovery_lock" = "a";

"{/etc/udev/rules.d/09-network.rules}/contents/interfaces" = dict();

"{/etc/aii/opennebula.conf}/contents" = dict();

"{/etc/bacula/bacula-fd.conf}/contents" = dict();
"{/etc/bacula/bacula-sd.conf}/contents" = dict();

"{/etc/bwctld/bwctld.conf}/contents" = dict("nuttcp_port", 123);
"{/var/lib/bwctl/.bwctlrc}/contents" = dict();
"{/etc/bwctld/bwctld.limits}/contents" = dict("assign", list(), "limit", dict());
"{/var/lib/perfsonar/.bwctlrc}/contents" = dict();

"{/etc/cachefilesd.conf}/contents/dir" = "a";

"{/etc/carbon-relay-ng.ini}/contents/init" = list();

"{/etc/cgconfig.d/quattor.conf}/contents" = dict();

"{/etc/elasticsearch/elasticsearch.yml}/contents" = dict();

"{/etc/filebeat/filebeat.yml}/contents/filebeat/prospectors" = list();
"{/etc/filebeat/filebeat.yml}/contents/output/console" = dict();

"{/etc/ganesha/ganesha.conf}/contents/exports" = list();

"{/etc/gpfsbeat/gpfsbeat.yml}/contents/gpfsbeat" = dict("devices", list(), "period", "123");
"{/etc/gpfsbeat/gpfsbeat.yml}/contents/output/console" = dict();

"{/etc/haproxy/haproxy.cfg}/contents/global" = dict("logs", dict(), "config", dict(), "stats", dict());
"{/etc/haproxy/haproxy.cfg}/contents/defaults" = dict("config", dict(), "timeouts", dict());

"{/etc/httpd/conf/httpd.conf}/contents/ifmodules" = list();

"{/etc/idmapd.conf}/contents/General/Domain" = "somedomain";

"{/etc/keepalived/keepalived.conf}/contents/global_defs/router_id" = "a";
"{/etc/keepalived/keepalived.conf}/contents/vrrp_scripts" = list();
"{/etc/keepalived/keepalived.conf}/contents/vrrp_instances" = list();

"{/etc/kibana/kibana.yml}/contents" = dict();

"{/etc/krb5.conf}/contents" = dict("logging", dict(), "realms", dict(), "domain_realms", dict());
"{/etc/krb5.conf}/contents/libdefaults/default_realm" = "a@b";

"{/etc/libvirt/libvirtd.conf}/contents" = dict();
"{/etc/libvirt/qemu.conf}/contents" = dict();
"{/etc/libvirt/qemu/vm.xml}/contents/name" = "a.bb";

"{/etc/lmodrc.lua}/contents/prop" = dict();

"{/etc/logstash-forwarder.conf}/contents/network/servers" = list();
"{/etc/logstash-forwarder.conf}/contents/files" = list();

"{/etc/logstash/conf.d/logstash.conf}/contents" = dict("input", dict(), "output", dict());

"{/etc/multipath.conf}/contents" = dict();

"{/etc/nagios/nrpe.cfg}/contents" = dict("allowed_hosts", list(), "command", dict());

"{/etc/named.conf}/contents/options/allow-query" = list();

"{/etc/ncm-ncd.conf}/contents" = dict();

"{/etc/nginx/nginx.conf}/contents/http/0/server" = list();

"{/etc/openvpn/client.conf}/contents" = dict("remote", list(), "ca", "/a",
    "cert", "/b", "dev", "tun", "key", "/c", "proto", "tcp", "tls-auth", "hubba");

"{/etc/openvpn/server.conf}/contents" = dict("ca", "/a",
    "cert", "/b", "dev", "tun", "key", "/c", "proto", "tcp", "tls-auth", "hubba");

"{/etc/pakiti/pakiti2-client.conf}/contents/server_name" = "a.bb";

"{/etc/ptpd2.conf}/contents/ptpengine/interface" = "em1";

"{/etc/rsyncd.conf}/contents/sections" = dict();

"{/etc/sasl2/libvirt.conf}/contents" = dict();

"{/etc/security/limits.d/91-quattor.conf}/contents/entries" = list();

"{/etc/singularity/singularity.conf}/contents" = dict();

"{/etc/snmp/snmp.conf}/contents" = dict();
"{/etc/snmp/snmpd.conf}/contents" = dict();
"{/etc/snmp/snmptrapd.conf}/contents" = dict();

"{/etc/snoopy.ini}/contents" = dict();

"{/etc/ssh/ssh_config}/contents" = dict();

"{/etc/sysconfig/ceph}/contents" = dict();

"{/etc/sysconfig/libvirtd}/contents" = dict();

"{/etc/topbeat/topbeat.yml}/contents/input" = dict();
"{/etc/topbeat/topbeat.yml}/contents/output/console" = dict();

"{/etc/updatedb.conf}/contents" = dict();

"{/etc/zkrs/default.conf}/contents" = dict("servers", list(), "source", true, "rsyncpath", "/a/b/c");

"{/etc/zookeeper/conf/zoo.cfg}/contents/main/dataDir" = "/a/b";
"{/etc/zookeeper/conf/zoo.cfg}/contents/servers" = list();

"{/opt/graphite/webapp/graphite/local_settings.py}/contents/config" = dict();

"{/opt/moab/etc/moab.cfg}/contents/main" = dict();

"{/opt/perfsonar_ps/lookup_service/etc/daemon.conf}/contents/port" = list();
"{/opt/perfsonar_ps/ls_registration_daemon/etc/ls_registration_daemon.conf}/contents" = dict("site", list(), "ls_instance", "http://some.thing");
"{/opt/perfsonar_ps/perfsonarbuoy_ma/etc/daemon.conf}/contents/ports" = list();
final variable OWDEFS = dict(
    "data_dir", "/var/lib/perfsonar/perfsonarbuoy_ma/bwctl",
    "central_host", "a.bb:8570",
    "timeout", 3600,
    "archive_dir", "/var/lib/perfsonar/perfsonarbuoy_ma/bwctl/archive",
    "db", "bwctl",
    );
"{/opt/perfsonar_ps/perfsonarbuoy_ma/etc/owmesh.conf}/contents" = dict(
    "testspecs", dict(),
    "nodes", dict(),
    "localnodes", list(),
    "hosts", dict(),
    "groups", dict(),
    "measurementsets", dict(),
    "addrtype", list(),
    "bwctl", OWDEFS,
    "owamp", OWDEFS,
);

final variable ICDB = dict(
    "dsn", dict(
        "protocol", "pgsql",
        "hostname", "a.bb",
        "username", "user",
        "password", "secret",
        "port", 123,
        "database_name", "ic",
        ),
    "caching", dict("enabled", true, "use_query_cache", true),
    "manager_attributes", dict(),
    "load_models", "models",
    "models_directory", "/a/b",
    "class", "AppKitDoctrineDatabase",
);
"{/usr/share/icinga-web/app/config/databases.xml}/contents" = dict("icinga_db", ICDB, "icinga_web_db", ICDB);

"{/var/kerberos/krb5kdc/kadm5.acl}/contents/acls" = list();
"{/var/kerberos/krb5kdc/kdc.conf}/contents" = dict(
    "defaults", dict(),
    "realms", dict(),
);

# components
prefix "/software/components";
"afsclt" = dict("enabled", "yes", "thiscell", "cell");
"amandaserver" = dict("backups", dict(), "amandahosts", list());
"autofs/maps" = dict();
"chkconfig/service" = dict();

"dcache/config/jythonjavahome" = "some";
"dcache/config/node_config/node_type" = "type";
"dcache/config/dCacheSetup/serviceLocatorHost" = "a.bb";

"etcservices/entries" = list();
"freeipa" = dict("primary", "a.bb", "realm", "AB");
"gip2" = dict("user", "user", "basedir", "/a/b");
"glitestartup/services" = dict();
"globuscfg/globus_flavor_name" = "abc";
"gmetad" = dict("file", "/a/b", "data_source", list());

"gmond" = dict(
    "globals", dict(),
    "udp_send_channel", list(),
    "udp_recv_channel", list(),
    "tcp_accept_channel", list(),
    "collection_group", list(),
    "file", "/a/b",
);

"gpfs" = dict(
    "base", dict("rpms", list(), "baseurl", "abc"),
    "cfg", dict("url", "abc", "subnet", "abc"),
);

"gridmapdir" = dict("gridmapdir", "abc", "poolaccounts", dict());
"grub" = dict();
"hostsfile/entries" = dict();

"icinga" = dict(
    "hosts", dict(),
    "hosts_generic", dict(),
    "hostgroups", dict(),
    "hostdependencies", dict(),
    "services", dict(),
    "servicegroups", dict(),
    "general", dict(),
    "cgi", dict(),
    "timeperiods", dict(),
    "contacts", dict(),
    "contactgroups", dict(),
    "commands", dict("process-host-perfdata", "a", "process-service-perfdata", "b"),
    "ido2db", dict(),
);

"interactivelimits/values" = list();
"ipmi" = dict("net_interface", "a", "users", list());
"lcas/dbpath" = "abc";
"lcgbdii/port" = 123;
"lcgmonjob" = dict("EDG_LOCATION", "abc", "LCG_LOCATION", "abc");
"lcmaps/config" = list();
"mkgridmap/entries" = dict();
"modprobe/modules/0/name" = "abc";
"mysql/servers" = dict();

"nagios" = dict(
    "hosts", dict(),
    "services", dict(),
    "general", dict(),
    "timeperiods", dict(),
    "contacts", dict(),
    "contactgroups", dict(),
    "commands", dict("process-host-perfdata", "a", "process-service-perfdata", "b"),
);

"nrpe/options" = dict("allowed_hosts", list(), "command", dict());
"nss/databases" = dict();
"ofed/openib/hardware/mlx4" = true;

"openldap" = dict(
    "include_schema", list(),
    "database", "abc",
    "suffix", "abc",
    "rootdn", "abc",
    "rootpw", "abc",
    "directory", "abc",
);

"pbsclient/masters" = list();

"pnp4nagios" = dict(
    "npcd", dict(),
    "php", dict(),
    "perfdata", dict(),
    "nagios", dict(),
);

"postfix" = dict("master", list(), "main", dict());
"resolver/servers" = list();
"syslog/config" = list();

"syslogng" = dict(
    "options", dict("use_dns", "yes"),
    "sources", dict(),
    "destinations", dict(),
    "log_rules", list(),
);

"useraccess/users" = dict();
"wlconfig/networkServer/iiHost" = "a.bb";

"xrootd/hosts" = dict();
"xrootd/options" = dict(
    "authzLibraries", list(),
    "daemonUser", "abc",
    "daemonGroup", "abc",
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

# make one big test.pan
find pan -type f ! -regex '^./build_temp/.*' -name *.pan | grep -v yumng | xargs sed -n "s/^declaration[ ]\+template[ ]\+\(.*\);/include '\1';/p" | sort >> build_temp/test.pan
find . -type f ! -regex '^./pan/.*' ! -regex '^./build_temp/.*' -name *.pan | grep -v yumng | xargs sed -n "s/^declaration[ ]\+template[ ]\+\(.*\);/include '\1';/p" | sort >> build_temp/test.pan
find . -type f ! -regex '^./build_temp/.*' -name *.pan | grep -v yumng | xargs sed -n "s/^\(unique[ ]\+\)\?template[ ]\+\(.*\);/include '\2';/p" |sort >> build_temp/test.pan

# fix for multiversion metaconfig
sed -i '/.*metaconfig\/\(elasticsearch\|logstash\|beats\|kibana\|slurm\)\/.*_[0-9].*/d' build_temp/test.pan
# none-versioned ganesha templates are v1
sed -i "/.*metaconfig\/ganesha\/\(config\(_v1\)\?\|schema\)'/d" build_temp/test.pan
sed -i "/.*metaconfig\/ganesha\/fsal.*/d" build_temp/test.pan
# action.pan is included by the schema and can only be included after inputs.pan
sed -i "/.*metaconfig\/rsyslog\/actions.*/d" build_temp/test.pan

# only spma yum
sed -i "/.*components\/spma\/\(apt\|ips\).*/d" build_temp/test.pan

# Only test default schema version of ceph component
sed -i "/.*components\/ceph\/v[1-9][0-9]*\/.*/d" build_temp/test.pan

# Only test default schema version of ssh component
sed -i "/.*components\/ssh\/schema-.*/d" build_temp/test.pan

# try to compile it
output=`panc --output-dir build_temp --include-path .:build_temp build_temp/test.pan 2>&1`

# use "$output" to preserve newlines in echo

# if it fails, it's sort of ok when due to bind problems because there's no actual data
ec=$?

if [ $ec -eq 0 ]; then
    echo "$output"
    echo "[OK] Pan compilation success."
else
    echo "$output" | grep 'element does not exist' >& /dev/null
    if [ $? -eq 0 ]; then
        echo "$output" | grep 'bound to type' >& /dev/null
        if [ $? -eq 0 ]; then
            echo "$output"
            echo "[OK] expected panc failure due to missing data."
            ec=0
        fi
    fi
fi

if [ $ec -ne 0 ]; then
    echo "$output"
    echo "[ERROR] Pan compilation failed"
fi

exit $ec
