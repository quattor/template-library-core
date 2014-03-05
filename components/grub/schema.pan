################################################################################
# This is 'TPL/schema.tpl', a ncm-grub's file
################################################################################
#
# VERSION:    2.1.2, 09/08/07 18:29
# AUTHOR:     German Cancio <German.Cancio@cern.ch>
# MAINTAINER: German Cancio <German.Cancio@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/grub/schema;

include { 'quattor/schema' };

type type_kernel = {
    "kernelpath"    : string
    "kernelargs"    ? string
    "multiboot"     ? string
    "mbargs"        ? string
    "initrd"        ? string
    "title"         ? string
    "fullcontrol"   ? boolean
};

type component_grub_type = {
    include structure_component
    "prefix"    ?      string
    "args"      ?    string
    "kernels"   ?    type_kernel[]
};


bind '/software/components/grub' = component_grub_type;

