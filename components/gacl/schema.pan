################################################################################
# This is 'TPL/schema.tpl', a ncm-gacl's file
################################################################################
#
# VERSION:    1.0.0-1, 16/02/08 23:10
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################


declaration template components/gacl/schema;

include { 'quattor/schema' };

type component_gacl = {
  include structure_component
  
  'aclFile'     : string = '/opt/glite/etc/glite_wms_wmproxy.gacl'
};

bind "/software/components/gacl" = component_gacl;

