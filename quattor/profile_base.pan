unique template quattor/profile_base;

include 'pan/units';
include 'quattor/schema';
  
# define the root type of the configuration data tree
bind '/' = structure_profile;
