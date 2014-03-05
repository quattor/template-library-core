################################################################################
# This is 'TPL/schema.tpl', a ncm-ifconfig's file
################################################################################
#
# VERSION:    1.1.0, 26/06/07 00:07
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/ifconfig/schema;

include { 'quattor/schema' };

type component_ifconfig_interfaces = {
	"ip"		: type_ip
	"netmask"	: type_ip
	"gateway"	: type_ip
	"broadcast"	? type_ip			# Broadcast can be computed from netmask by startup script
};

type component_ifconfig_options = {
	"check"		? boolean = false
	"restart"	? boolean = false
};

type component_ifconfig = {
	include structure_component
	"interfaces"	: component_ifconfig_interfaces{}
	"options"	: component_ifconfig_options
};

bind '/software/components/ifconfig' = component_ifconfig;
