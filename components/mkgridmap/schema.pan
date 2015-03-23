# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# mkgridmap, 15.2.0, 1, 20150323-1249
#
#

declaration template components/mkgridmap/schema;

include { 'quattor/schema' };

type structure_mkgridmap_local = {
        'cert' : string
        'user' : string
};

type structure_mkgridmap_lcmaps = {
  'flavor'     : string = 'glite' with match(SELF,'edg|glite')
	'gridmapfile' : string = '/opt/edg/etc/lcmaps/gridmapfile'
	'groupmapfile' : string = '/opt/edg/etc/lcmaps/groupmapfile'
};

type mkgridmap_component_entry = extensible {
        'mkgridmapconf' : string
        'format'        : string with (match(SELF, 'edg|lcgdm'))
        'command'       ? string
     #  'gmflocal'      ? string    # can have either string or list (hence "extensible")
     #  'gmflocal'      ? string[]  # if you need a list, explicitly set to "null" before to remove default
        'lcuser'        ? string
        'allow'         ? string
        'deny'          ? string
        'overwrite'     : boolean
        'authURIs'      ? type_hostURI[]
        'locals'        ? structure_mkgridmap_local[]
};

type mkgridmap_component = {
	include structure_component
	'entries'    : mkgridmap_component_entry{}
	'lcmaps'     ? structure_mkgridmap_lcmaps
	'voList'     ? string[]
};

bind '/software/components/mkgridmap' = mkgridmap_component;

