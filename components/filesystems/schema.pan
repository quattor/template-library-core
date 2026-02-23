# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# 

declaration template components/filesystems/schema;

include 'quattor/schema';
include 'quattor/blockdevices';
include 'quattor/filesystems';

@documentation{
when manage_blockdevs is false, filesystems does same as fstab
No other resources here: this component takes its configuration
from fstab component, "/system/filesystems" and "/system/blockdevices"
}
type structure_component_filesystems = {
    include structure_component
    'manage_blockdevs' : boolean = true
};

bind "/software/components/filesystems" = structure_component_filesystems;
