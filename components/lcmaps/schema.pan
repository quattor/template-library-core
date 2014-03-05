################################################################################
# This is 'TPL/schema.tpl', a ncm-lcmaps's file
################################################################################
#
# VERSION:    1.2.2, 17/10/08 22:45
# AUTHOR:     David Groep <davidg@nikhef.nl>
# MAINTAINER: David Groep <davidg@nikhef.nl>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################


declaration template components/lcmaps/schema;

include { 'quattor/schema' };

function component_lcmaps_valid = {
  if ( (ARGC != 1) && !is_nlist(ARGV[0]) ) {
    error('Invalid argument list in validation function component_lcmaps_valid');
  };
  
  if ( exists(SELF['config']) && is_defined(SELF['config']) &&
       exists(SELF['dbpath']) && is_defined(SELF['dbpath']) &&
       exists(SELF['module']) && is_defined(SELF['module']) &&
       exists(SELF['modulepath']) && is_defined(SELF['modulepath']) &&
       exists(SELF['policies']) && is_defined(SELF['policies']) ) {
     error('Single file and multifile configuration be used togheter'); 
     return(false);
   } else if ( !exists(SELF['config']) || !is_defined(SELF['config']) ) {
     if ( !exists(SELF['dbpath']) || !is_defined(SELF['dbpath']) ||
          !exists(SELF['modulepath']) || !is_defined(SELF['modulepath']) ) {
       error('Neiter multifile configuration nor valid single file configuration present'); 
       return(false);
     };
   };
   
   return(true);
};

type lcmaps_modulespec_type = {
	"path"	: string
	"args"	? string
};

type lcmaps_policy_type = {
	"name"		: string
	"ruleset"	: string[]
};

type lcmaps_file_type = {
	"dbpath"	: string
	"modulepath"	: string
	"module"	? lcmaps_modulespec_type{}
	"policies"	? lcmaps_policy_type[]
};

type component_lcmaps = {
  include structure_component
  "flavor"  ? string with match(SELF,'edg|glite')
  "dbpath"	? string
  "modulepath"	? string
  "multifile"	? boolean
  "module"	? lcmaps_modulespec_type{}
  "policies"	? lcmaps_policy_type[]
  "config"      ? lcmaps_file_type[]
  # 'multifile' is deprecated and ignored. Kept for backward compatibility.
  "multifile" ? boolean
} with component_lcmaps_valid(SELF);

bind "/software/components/lcmaps" = component_lcmaps;

