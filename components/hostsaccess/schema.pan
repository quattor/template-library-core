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


declaration template components/hostsaccess/schema;

include {'quattor/schema'};

type structure_hostsaccess_entry = {
    'daemon' ? string
    'host'   ? string  
};

type component_hostsaccess = {
    include structure_component
    'allow' ? structure_hostsaccess_entry[]
    'deny'  ? structure_hostsaccess_entry[]
};

bind '/software/components/hostsaccess' = component_hostsaccess;
