################################################################################
# This is 'TPL/schema.tpl', a ncm-sysconfig's file
################################################################################
#
# VERSION:    1.2.0, 30/01/08 15:18
# AUTHOR:     Charles Loomis <loomis@lal.in2p3.fr>
# MAINTAINER: Charles Loomis <loomis@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/sysconfig/schema;

include { 'quattor/schema' };

type component_sysconfig = {
    include structure_component
    'files' ? string{}{}
};

bind '/software/components/sysconfig' = component_sysconfig;


