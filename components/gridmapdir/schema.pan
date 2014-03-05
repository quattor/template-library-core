################################################################################
# This is 'TPL/schema.tpl', a ncm-gridmapdir's file
################################################################################
#
# VERSION:    2.0.1, 12/02/10 18:20
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/gridmapdir/schema;

include { 'quattor/schema' };

type component_gridmapdir = {
  include structure_component
  'gridmapdir'       : string 
  'poolaccounts'     : long(0..0){}
  'sharedGridmapdir' ? string
  'owner'            : string = 'root'
  'group'            : string = 'root'
  'perms'            : string = '0755'
};

bind '/software/components/gridmapdir' = component_gridmapdir;
