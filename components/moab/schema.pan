# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# moab, 15.4.0, 1, 2015-06-03T15:27:32Z
#
#

declaration template components/moab/schema;

include { 'quattor/schema' };

## to be used for USERCFG, GROUPCFG...
type moab_component_cfg = string[];

type moab_component_include = {
    'contents' ? string
    'ok' : boolean = true
};

type moab_component = {
    include structure_component
    'mode'  ? string with match(SELF,'moab|maui')

    'configPath' ? string
    'binPath' ? string
    'configFile' ? string
    
    'sched' ? moab_component_cfg{}
    'rm' ? moab_component_cfg{}
    
    'am' ? moab_component_cfg{}
    
    'id' ? moab_component_cfg{}
    
    'user' ? moab_component_cfg{}
    'group' ? moab_component_cfg{}

    'node'  ? moab_component_cfg{}

    'account'  ? moab_component_cfg{}
    'class'  ? moab_component_cfg{}
    'qos'  ? moab_component_cfg{}
    
    'include' ? moab_component_include{}
    
    'main' : string{}
    'priority' ? string{}
    
};

bind '/software/components/moab' = moab_component;


