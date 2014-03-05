################################################################################
# This is 'TPL/schema.tpl', a ncm-gsissh's file
################################################################################
#
# VERSION:    1.1.2, 29/03/07 20:44
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/gsissh/schema;

include { 'quattor/schema' };
include { 'pan/types' };

type structure_gsissh_server = {
	'port' : type_port
	'options' ? string{}
};

type structure_gsissh_client = {
	'options' ? string{}
};

type component_gsissh = {
	include structure_component
	'globus_location' ? string
	'gpt_location' ? string
	'server' ? structure_gsissh_server
	'client' ? structure_gsissh_client
};

bind '/software/components/gsissh' = component_gsissh;

