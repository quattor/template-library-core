################################################################################
# This is 'TPL/schema.tpl', a ncm-lbconfig's file
################################################################################
#
# VERSION:    1.0.2, 29/03/07 20:45
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/lbconfig/schema;

include { 'quattor/schema' };

type structure_index_list = string[];

type component_lbconfig = {
	include structure_component
        'configFile'     : string = 'edg_wl_query_index.conf'
        'indicies'       : structure_index_list{} = nlist('system', list('owner','location','destination'))
};

bind '/software/components/lbconfig' = component_lbconfig;
