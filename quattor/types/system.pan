declaration template quattor/types/system;

@documentation{
    system-related structures
}
type structure_import = {
    "source"     : string # with isURI(SELF)
    "mountpoint" ? string with match(SELF, '^(/[a-zA-Z\_\d/]*|none|swap)$')
    "options"    ? string
};

type structure_export = {
    "localpath" : string
    "options"   ? string
};

type structure_cluster = {
    "name" : string
    "type" ? string
};

type structure_kernel = {
    "version"   ? string # "kernel version to use (eg. 2.4.18-27.7.x.cernsmp)"
};

type structure_oldname = {
    "name" : string
    "date" : string
};

# network schema defined within component area
include 'components/network/core-schema';

# TODO: monitoring to be defined
include 'monitoring/lemon/schema';

include 'quattor/blockdevices';
include 'quattor/filesystems';
include 'quattor/types/aii';
include 'quattor/types/grid';
include 'quattor/types/hardware';

type structure_system = {
    "aii"           ? structure_aii
    "architecture"  ? string with match (SELF,'i386|ia64|x86_64|sparc')
                                # "system architecture"
    "cluster"       ? structure_cluster
    "edg"           ? structure_edg
    "enclosure"     ? structure_enclosure
    "filesystems"   ? structure_filesystem[]
    "blockdevices" ? structure_blockdevices
    "glite"         ? structure_glite
    "kernel"        : structure_kernel
    "lcg"           ? structure_lcg
    "network"       : structure_network
    # TODO: monitoring-related structures should go elsewhere. 
    "monitoring"    ? structure_monitoring
    "oldnames"      ? structure_oldname[]
    "rootmail"      : type_email
    "siterelease"   ? string
    "state"         ? string with match (SELF,
        '^(production|standby|test|development|onloan)$') # "production|out-of-production|test|development|onloan"
    "vo"            ? structure_vo{}
};
