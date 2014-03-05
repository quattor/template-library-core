################################################################################
# This is 'TPL/schema.tpl', a ncm-lcas's file
################################################################################
#
# VERSION:    1.1.0, 07/02/10 23:08
# AUTHOR:     David Groep <davidg@nikhef.nl>
# MAINTAINER: David Groep <davidg@nikhef.nl>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
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


type component_lcas_plainfile_content = {
  "path"     : string
  "noheader" : boolean = false
  "content"  ? string[]
};

type component_lcas_modulespec = {
  "path"  : string
  "args"  ? string
  "conf"  ? component_lcas_plainfile_content
};

type component_lcas_db = {
  "path"    : string
  "module"  ? component_lcas_modulespec[]
};

type component_lcas = {
  include structure_component
  "db"      ? component_lcas_db[]
  # Deprecated: use 'db' instead.
  "dbpath"  ? string
  "module"  ? component_lcas_modulespec[]
} with component_lcas_valid(SELF);

bind "/software/components/lcas" = component_lcas;

