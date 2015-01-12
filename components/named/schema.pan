# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# 

############################################################
#
# type definition components/named
#
############################################################

declaration template components/named/schema;

include { 'quattor/schema' };

function component_named_valid = {
  function_name = 'component_named_valid';
  if ( ARGC != 1 ) {
    error(function_name+': this function requires 1 argument');
  };
  
  if ( exists(SELF['serverConfig']) && exists(SELF['configfile']) ) {
    error(function_name+": properties 'serverConfig' and 'configfile' are mutually exclusive.");
  };
  
  true;
};

type component_named = {
    include structure_component
    "serverConfig"  ? string
    "configfile"    ? string
    "use_localhost" : boolean = true
    "start"         ? boolean
    "servers"       ? string[]
    "options"       ? string[]
    "search"        ? type_fqdn[]
} with component_named_valid(SELF);

bind "/software/components/named" = component_named;
