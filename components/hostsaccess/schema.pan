################################################################################
# This is 'TPL/schema.tpl', a ncm-hostsaccess's file
################################################################################
#
# VERSION:    1.1.3, 29/03/07 20:38
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/hostsaccess/schema;

include { 'quattor/schema' };

type structure_hostsaccess_entry = {
    'daemon' ? string
    'host'   ? string  
};

type component_hostsaccess = {
    include structure_component
    'allow' ? structure_hostsaccess_entry[]
    'deny'  ? structure_hostsaccess_entry[]
};

bind '/software/components/hostsaccess' = component_hostsaccess;
