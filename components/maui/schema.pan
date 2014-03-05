################################################################################
# This is 'TPL/schema.tpl', a ncm-maui's file
################################################################################
#
# VERSION:    1.1.3, 29/03/07 20:46
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/maui/schema;

include { 'quattor/schema' };

type component_maui = {
	include structure_component
        'configPath' ? string
        'configFile' ? string
        'contents' ? string
};

bind '/software/components/maui' = component_maui;


