################################################################################
# This is 'TPL/functions.tpl', a ncm-glitestartup's file
################################################################################
#
# VERSION:    1.1.1-1, 09/03/12 14:22
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/glitestartup/functions;

# Function to add a gLite service with optional attributes.
# If the service already exists, its attributes are modified.
#
# Return value : nlist of gLite services
#
# Expect to be called as :
#   '/software/components/glitestartup/services' = glitestartup_mod_service(service_name[,service_attrs]);
#
# where :
#  - service_name is the name of the gLite service
#  - service_attrs is a nlist of valid attributes (see schema.tpl)

function glitestartup_mod_service = {
  function_name = 'glitestartup_mod_service';
  if ( ARGC < 1 ) {
    error(function_name+': missing required argument (service name)');
  } else if ( ARGC > 2 ){
    error(function_name+': too many arguments ('+to_string(ARGC)+')');  
  };
  
  if ( ARGC == 2 ) {
    SELF[ARGV[0]] = ARGV[1];
  } else {
    SELF[ARGV[0]] = nlist();
  };
  
  SELF;
};


# Function to add a new dependency to ncm-glitestartup.
# This function allows to avoid duplicating dependencies as this component may be used by many others.
# May be a candidate for inclusion in component core included into each component... Nothing component specific there.
#
# Calling sequence :
#    '/software/components/glitestartup/dependencies/pre' (or post) = glitestartup_add_dependency(dependency_list);
#
# with dependency_list a list of dependency.

function glitestartup_add_dependency = {
  function_name = 'glitestartup_add_dependency';
  deps = SELF;
  tmpdeps = nlist();

  if ( (ARGC != 1) || !is_list(ARGV[0]) ) {
    error(function_name+': argument must be list of dependencies');
  };
  
  if ( !is_defined(deps) ) {
    deps = list();
  } else if ( !is_list(deps) ) {
    error('component dependencies must be a list');
  } else {
    foreach (i;dep;deps) {
      tmpdeps[dep] = '';
    };
  };
  
  foreach (i;dep;ARGV[0]) {
    if ( !exists(tmpdeps[dep]) ) {
      tmpdeps[dep] = '';
    }
  };
  
  deps = list();
  foreach (dep;v;tmpdeps) {
    deps[length(deps)] = dep;
  };
  
  if ( length(deps) > 0 ) {
    deps;
  } else {
    null;
  };
};
