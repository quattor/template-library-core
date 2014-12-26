################################################################################
# This is 'namespaces/standard/quattor/schema.tpl', a pan-templates's file
################################################################################
#
# VERSION:    3.2.9, 25/11/09 16:16
# AUTHOR:     Martin Bock
# MAINTAINER: Marco Emilio Poleggi <Marco.Emilio.Poleggi@cern.ch>, German Cancio <German.Cancio.Melia@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
#
# Type definition for the following structures:
#
#     * annotation
#     * ram
#     * harddisk
#     * cpu
#     * nic
#     * cards
#     * hardware
#     * interface_alias
#     * interface
#     * network
#     * route
#     * edg
#     * software
#     * system
#     * component
#     * profile
#
################################################################################

declaration template quattor/schema;

include { 'pan/types' };
include { 'quattor/functions/validation' };

# To be defined
include { 'monitoring/lemon/schema' };

include { 'quattor/types/hardware' };

# Partitions, disks, LVM, software RAID and filesystems
include { 'quattor/blockdevices' };
include { 'quattor/filesystems' };

# network schema defined within component area
include {"components/network/core-schema"};

include { 'quattor/types/grid' };

include { 'quattor/types/aii' };

include { 'quattor/types/system' };

include { 'quattor/types/component' };

type structure_system = {
    "aii"           ? structure_aii
    "architecture"  ? string    # with match (SELF,'i386|ia64|x86_64|sparc')
                                # "system architecture"
    "cluster"       ? structure_cluster
    "edg"           ? structure_edg
    "enclosure"     ? structure_enclosure
    "filesystems"   ? structure_filesystem[]
    "blockdevices" ? structure_blockdevices
    "glite"         ? structure_glite
    "kernel"        : structure_kernel         # required by ncm-grub
    "lcg"           ? structure_lcg
    "network"       : structure_network
    # monitoring-related structures should go elsewhere. TBD.
    "monitoring"    ? structure_monitoring
    "oldnames"      ? structure_oldname[]
    "rootmail"      : type_email
    "siterelease"   ? string
    "state"         ? string with match (SELF,
        'production|standby|test|development|onloan') # "production|out-of-production|test|development|onloan"
    "vo"            ? structure_vo{}
};


############################################################
# structure_software
#
# generic definition of the software tree. This is made more specific if the
# SPMA definitions are included
############################################################
type structure_software = {
    "components"    ? structure_component{}
    "repositories"  ? list
    "packages"      ? nlist
    "groups"        ? nlist
};


############################################################
# structure_profile
############################################################
type structure_profile = {
    "hardware" : structure_hardware
    "software" ? structure_software
    "system"   : structure_system
};
