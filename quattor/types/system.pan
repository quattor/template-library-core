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
include 'quattor/types/aquilon/system';
include 'quattor/types/grid';
include 'quattor/types/hardware';
include 'quattor/types/os';

type structure_system = {
    "aii"           ? structure_aii
    @{CPU architecture of system.}
    "architecture"  ? cpu_architecture
    "edg"           ? structure_edg
    "blockdevices" ? structure_blockdevices
    "glite"         ? structure_glite
    "kernel"        : structure_kernel
    "lcg"           ? structure_lcg
    "network"       : structure_network
    @{Monitoring-related schemas should handle the bind to this path when they are included.}
    "monitoring"    ? dict
    "os" ? structure_os
    "resources"     ? structure_resources
    "rootmail"      : type_email
    "siterelease"   ? string
    @{Current state of system, one of: production, out-of-production, test, development, onloan.}
    "state"         ? string with match (SELF, '^(production|standby|test|development|onloan)$')
    "vo"            ? structure_vo{}
    "opennebula"    ? dict
    include structure_system_aquilon
};
