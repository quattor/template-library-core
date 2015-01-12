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


declaration template components/ldconf/schema;

include {'quattor/schema'};

type component_ldconf = {
    include structure_component
    'conffile' : string = '/etc/ld.so.conf'
    'paths'    ? string[]
};

bind '/software/components/ldconf' = component_ldconf;


