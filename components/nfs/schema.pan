# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# 


declaration template components/nfs/schema;
 
include { 'quattor/schema' };

type structure_nfs_exports = {
    'path'  : string
    'hosts' : string{}
};
  
type structure_nfs_mounts = {
    'device'     : string
    'mountpoint' : string
    'fstype'     : string with match(SELF, '^(nfs4?|panfs|none)$')
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

