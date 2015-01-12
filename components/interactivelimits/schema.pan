# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Vladimir Bahyl <Vladimir.Bahyl@cern.ch>
#

# 


declaration template components/interactivelimits/schema;

include { 'quattor/schema' };

type component_interactivelimits_type = {
    include structure_component
    # arrays of array like this [<domain> <type> <item> <value>]
    "values" : list
};

bind "/software/components/interactivelimits" = component_interactivelimits_type;
