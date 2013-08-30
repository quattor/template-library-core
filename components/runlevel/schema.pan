# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Veronique Lefebure <Veronique.Lefebure@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/runlevel/schema;

include {'quattor/schema'};

function is_valid_runlevel = {
    level = ARGV[0];
    if(level>0 && level<6) return(true);
    error("Invalid runlevel value: " + to_string(level));
    return(false);
};

type component_runlevel_type = {
    include structure_component
    "initdefault" : long with { is_valid_runlevel(SELF)}
};

bind "/software/components/runlevel" = component_runlevel_type;

