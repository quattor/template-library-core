# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



declaration template components/oramonserver/schema;

include {'quattor/schema'};
# Old Quattor 1.1 use this instead 
#include components/type;

type component_oramonserver_type = {
    include structure_component
    # Old Quattor 1.1 use this instead 
    #include component_type
    "conf" : structure_monitoring
};

bind "/software/components/oramonserver" = component_oramonserver_type;

