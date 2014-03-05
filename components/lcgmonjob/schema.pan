################################################################################
# This is 'TPL/schema.tpl', a ncm-lcgmonjob's file
################################################################################
#
# VERSION:    2.1.2, 29/03/07 20:46
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/lcgmonjob/schema;

include { 'quattor/schema' };

type component_lcgmonjob = {
	include structure_component
	'EDG_LOCATION' : string
	'LCG_LOCATION' : string
};

bind '/software/components/lcgmonjob' = component_lcgmonjob;


