# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Nick Williams <Nick.Williams@morganstanley.com>
#

# 

############################################################
#
# type definition components/directoryservices
#
#
#
#
############################################################

declaration template components/directoryservices/schema;

include { 'quattor/schema' };

type directoryservices_ldap_entry = extensible {
};

type component_directoryservices = {
	include structure_component
        "search"  : list
        "ldapv3"  ? directoryservices_ldap_entry{}
};

bind "/software/components/directoryservices" = component_directoryservices;

