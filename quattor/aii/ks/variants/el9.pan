# Template containing OS configuration and default values.

template quattor/aii/ks/variants/el9;

# Remove deprecated options
prefix "/system/aii/osinstall/ks";
"mouse" = null;
"langsupport" = null;
"packages_args" = list("--ignoremissing");
# Required by perl-CDB_File
"packages" = append("perl-English");
# Required by some Quattor components and must be installed before
# /etc/init.d is created by something else (e.g. a Quattor package)
"packages" = append("chkconfig");
"packages" = append("initscripts");

"end_script" = "%end";  # TODO: remove - no longer used
"part_label" = true;
"volgroup_required" = false;
"lvmforce" = true;

# el9
"version" = "34.25";
"bootproto" = "static";
"enable_sshd" = true;
"cmdline" = true;

"logging/method" = 'bash';
"logging/protocol" = 'tcp';

# rhel
"eula" = true;
# deal with optional repository
"packagesinpost" ?= true;

prefix "/system/aii/nbp/pxelinux";
"setifnames" = true;