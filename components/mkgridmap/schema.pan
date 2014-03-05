################################################################################
# This is 'TPL/schema.tpl', a ncm-mkgridmap's file
################################################################################
#
# VERSION:    1.3.2-1, 23/11/08 00:51
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/mkgridmap/schema;

include { 'quattor/schema' };

type structure_mkgridmap_local = {
        'cert' : string
        'user' : string
};

type structure_mkgridmap_lcmaps = {
  'flavor'     : string = 'glite' with match(SELF,'edg|glite')
	'gridmapfile' : string = '/usr/etc/lcmaps/gridmapfile'
	'groupmapfile' : string = '/usr/etc/lcmaps/groupmapfile'
};

type component_mkgridmap_entry = {
        'mkgridmapconf' : string
        'format'        : string with (match(SELF, 'edg|lcgdm'))
        'command'       ? string
        'gmflocal'      ? string
        'lcuser'        ? string
        'allow'         ? string
        'deny'          ? string
        'overwrite'     : boolean
        'authURIs'      ? type_hostURI[]
        'locals'        ? structure_mkgridmap_local[]
};

type component_mkgridmap = {
	include structure_component
	'entries'    : component_mkgridmap_entry{}
	'lcmaps'     ? structure_mkgridmap_lcmaps
	'voList'     ? string[]
};

bind '/software/components/mkgridmap' = component_mkgridmap;

