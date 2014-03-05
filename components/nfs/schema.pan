################################################################################
# This is 'TPL/schema.tpl', a ncm-nfs's file
################################################################################
#
# VERSION:    2.0.0, 08/03/09 23:44
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Guillaume Philippon <philippo@lal.in2p3.fr>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/nfs/schema;
 
include { 'quattor/schema' };

type structure_nfs_exports = {
    'path'  : string
    'hosts' : string{}
};
  
type structure_nfs_mounts = {
    'device'     : string
    'mountpoint' : string
    'fstype'     : string with match(SELF, '^nfs|none$')
    'options'    ? string
    'freq'       ? long(0..)
    'passno'     ? long(0..)
};
 
type component_nfs = {
    include structure_component
    'exports' ? structure_nfs_exports[]
    'mounts'  ? structure_nfs_mounts[]
};
 
bind '/software/components/nfs' = component_nfs;

