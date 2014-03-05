################################################################################
# This is 'TPL/schema.tpl', a ncm-sysctl's file
################################################################################
#
# VERSION:    3.0.1-1, 04/08/09 09:59
# AUTHOR:     Benjamin Chardi <Benjamin.Chardi.Marco@cern.ch>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/sysctl
#
#
#
############################################################

declaration template components/sysctl/schema;

include { 'quattor/schema' };

type component_sysctl_structure = {
  include structure_component
  
  'command'   : string = '/sbin/sysctl'
  'compat-v1' : boolean = false
  'confFile'  : string = '/etc/sysctl.conf'
  'variables' ? string{}
};

bind "/software/components/sysctl" = component_sysctl_structure;
