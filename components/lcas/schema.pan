# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# lcas, 15.4.0, 1, 2015-06-03T15:27:32Z
#
#
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################


declaration template components/lcas/schema;

include { 'quattor/schema' };

# Validation function to ensure that legacy schema properties for describing 
#databases ('dbpath', 'module') are not used with the new ones (under 'db').
function component_lcas_valid = {
  if ( (ARGC != 1) && !is_nlist(ARGV[0]) ) {
    error('Invalid argument list in validation function component_lcas_valid');
  };
  
  if ( is_defined(SELF['db']) && is_defined(SELF['dbpath']) ) {
     error('Single database and multiple database configuration are mutually exclusive'); 
     return(false);
   } else if ( !is_defined(SELF['db']) && !is_defined(SELF['dbpath']) ) {
     error('Neither multiple database configuration nor valid single database configuration present'); 
     return(false);
   };
   
   return(true);
};


type lcas_component_plainfile_content = {
  "path"     : string
  "noheader" : boolean = false
  "content"  ? string[]
};

type lcas_component_modulespec = {
  "path"  : string
  "args"  ? string
  "conf"  ? lcas_component_plainfile_content
};

type lcas_component_db = {
  "path"    : string
  "module"  ? lcas_component_modulespec[]
};

type lcas_component = {
  include structure_component
  "db"      ? lcas_component_db[]
  # Deprecated: use 'db' instead.
  "dbpath"  ? string
  "module"  ? lcas_component_modulespec[]
} with component_lcas_valid(SELF);

bind "/software/components/lcas" = lcas_component;

