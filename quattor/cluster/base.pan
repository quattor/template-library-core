unique template quattor/cluster/base;

include 'pan/units';
include 'quattor/cluster/schema';

# define the root type of the configuration data tree
bind '/' = structure_profile_aquilon_cluster;
