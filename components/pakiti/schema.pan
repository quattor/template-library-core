# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Christos Triantafyllidis <ctria@grid.auth.gr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



declaration template components/pakiti/schema;

include {'quattor/schema'};


type component_pakiti_type = {
    include structure_component
    "admin" : string
    "server_url" : string
    "method" : string
};

bind "/software/components/pakiti" = component_pakiti_type;

