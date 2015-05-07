# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Benjamin Chardi <Benjamin.Chardi.Marco@cern.ch>
#

# 

############################################################
#
# type definition components/sysctl
#
############################################################

declaration template components/sysctl/schema;

include { 'quattor/schema' };

type component_sysctl_structure = {
  include structure_component

  'command'   : string = '/sbin/sysctl' with match(SELF, '^/.+')
  'compat-v1' : boolean = false
  'confFile'  : string = '/etc/sysctl.conf' with match(SELF, '^(/.+|[^/]+)\.conf$') # disallow / unless an absolute path is supplied.
  'variables' ? string{}
};

bind "/software/components/sysctl" = component_sysctl_structure;
