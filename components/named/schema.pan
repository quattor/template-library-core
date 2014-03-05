################################################################################
# This is 'TPL/schema.tpl', a ncm-named's file
################################################################################
#
# VERSION:    2.0.1, 23/06/10 16:28
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/named
#
#
#
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
    "start"         ? boolean
    "servers"       ? string[]
    "options"       ? string[]
    "search"        ? type_fqdn[]
} with component_named_valid(SELF);

bind "/software/components/named" = component_named;
