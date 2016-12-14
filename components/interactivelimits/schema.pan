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

include 'quattor/types/component';

type component_interactivelimits_type = {
    include structure_component
    # arrays of array like this [<domain> <type> <item> <value>]
    "values" : string[][]
};
