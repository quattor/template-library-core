################################################################################
# This is 'TPL/schema.tpl', a ncm-runlevel's file
################################################################################
#
# VERSION:    1.0.0, 26/06/07 00:13
# AUTHOR:     Veronique Lefebure <Veronique.Lefebure@cern.ch>
# MAINTAINER: Veronique Lefebure <Veronique.Lefebure@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/runlevel/schema;

include { 'quattor/schema' };

function is_valid_runlevel = {
    level = ARGV[0];
    if(level>0 && level<6) return(true);
    error("Invalid runlevel value: " + to_string(level));
    false;
};

type component_runlevel_type = {
    include structure_component
    "initdefault" : long with { is_valid_runlevel(SELF)}
};

bind '/software/components/runlevel' = component_runlevel_type;

