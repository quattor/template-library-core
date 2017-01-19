declaration template quattor/types/system;

@documentation{
    system-related structures
}
type structure_import = {
    "source"     : string
    "mountpoint" ? string with match(SELF, '^(/[a-zA-Z\_\d/]*|none|swap)$')
    "options"    ? string
};

type structure_export = {
    "localpath" : string
    "options"   ? string
};

type structure_kernel = {
    @{kernel version to use (eg. 2.4.18-27.7.x.cernsmp)}
    "version"   ? string
};

# network schema defined within component area
include 'components/network/core-schema';

include 'quattor/blockdevices';
include 'quattor/filesystems';
include 'quattor/types/aii';
include 'quattor/types/aquilon';
include 'quattor/types/grid';
include 'quattor/types/hardware';
include 'quattor/types/os';

type structure_system = {
    "aii"           ? structure_aii
    @{CPU architecture of system.}
    "architecture"  ? cpu_architecture
    "cluster"       ? structure_cluster
    "edg"           ? structure_edg
    "enclosure"     ? structure_enclosure
    @{Filesystems to be configured. Mountpoints and blockdevices must be unique.}
    "filesystems"   ? structure_filesystem[] with filesystems_uniq_paths(SELF)
    "blockdevices" ? structure_blockdevices
    "glite"         ? structure_glite
    "kernel"        : structure_kernel
    "lcg"           ? structure_lcg
    "network"       : structure_network
    @{Monitoring-related schemas should handle the bind to this path when they are included.}
    "monitoring"    ? dict
    "os" ? structure_os
    "rootmail"      : type_email
    "siterelease"   ? string
    @{Current state of system, one of: production, out-of-production, test, development, onloan.}
    "state"         ? string with match (SELF, '^(production|standby|test|development|onloan)$')
    "vo"            ? structure_vo{}
    include structure_system_aquilon
};
