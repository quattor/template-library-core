################################################################################
# This is 'TPL/schema.tpl', a ncm-oramonserver's file
################################################################################
#
# VERSION:    1.0.14, 05/09/07 12:05
# AUTHOR:     Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
# MAINTAINER: Miroslav Siket <Miroslav.siket@cern.ch>,Dennis Waldron <Dennis.Wladron@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/oramonserver/schema;

include { 'quattor/schema' };
# Old Quattor 1.1 use this instead 
#include { 'components/type' };

type component_oramonserver_type = {
    include structure_component
    # Old Quattor 1.1 use this instead 
    #include component_type
    "conf" : structure_monitoring
};

bind '/software/components/oramonserver' = component_oramonserver_type;

