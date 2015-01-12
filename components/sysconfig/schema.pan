# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <loomis@lal.in2p3.fr>
#

# 


declaration template components/sysconfig/schema;

include { 'quattor/schema' };

type component_sysconfig = {
    include structure_component
    'files' ? string{}{}
};

bind '/software/components/sysconfig' = component_sysconfig;


