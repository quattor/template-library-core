################################################################################
# This is 'TPL/schema.tpl', a ncm-modprobe's file
################################################################################
#
# VERSION:    1.1.1, 16/05/07 14:20
# AUTHOR:     Hugo Cacote <Hugo.Cacote@cern.ch>
# MAINTAINER: Hugo Cacote <Hugo.Cacote@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/modprobe/schema;
include { 'quattor/schema' };

type module_type = {
    "name"      : string # name of the loadable modules"
    "alias"     ? string # alias for the loadable module"
    "options"   ? string # options for the loadable module"
    "install"   ? string # command to run when loading module"
    "remove"    ? string # command to run when removing module "
};

type component_modprobe_type = {
    include structure_component
    "modules"   : module_type[1..] # modules to load"
};

bind '/software/components/modprobe' = component_modprobe_type;
