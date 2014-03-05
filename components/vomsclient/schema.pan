################################################################################
# This is 'TPL/schema.tpl', a ncm-vomsclient's file
################################################################################
#
# VERSION:    2.1.1-1, 13/01/11 14:55
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/vomsclient/schema;

include { 'quattor/schema' };
include { 'pan/types' };

type structure_vomsclient_voms_info = {
	'name' ? string
	'host' : type_fqdn
	'port' : type_port
	'cert' : string
	'oldcert' ? string
        'DN' ? string
        'issuer' ? string
};

type component_vomsclient = {
	include structure_component
	'lscfile' ? boolean
	'vomsCertsDir' ? string
	'vomsServersDir' ? string
	'vos' ? structure_vomsclient_voms_info[]{}
};

bind '/software/components/vomsclient' = component_vomsclient;

