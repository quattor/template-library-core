################################################################################
# This is 'TPL/schema.tpl', a ncm-etcservices's file
################################################################################
#
# VERSION:    1.1.0, 25/06/07 23:55
# AUTHOR:     Juan Pelegrin <Juan.Pelegrin@cern.ch>
# MAINTAINER: Juan Pelegrin <Juan.Pelegrin@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/etcservices/schema;

include { 'quattor/schema' };

type component_etcservices_type = {
	include structure_component
	"entries" : string []
};

bind '/software/components/etcservices' = component_etcservices_type;

