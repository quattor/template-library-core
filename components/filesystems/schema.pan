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

include {'quattor/schema'};
include {'quattor/blockdevices'};
include {'quattor/filesystems'};

type structure_component_filesystems = {
	include structure_component
	# No resources here: this component takes its configuration
	# from "/system/filesystems" and "/system/blockdevices"
};

bind "/software/components/filesystems" = structure_component_filesystems;
