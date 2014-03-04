# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume PHILIPPON <philippo@lal.in2p3.fr>
#

# 


declaration template components/ipmi/schema;

include { 'quattor/schema' };

type structure_users = {
	"login"    : string
	"password" : string
	"priv"     ? string
	"userid"   ? long
};

type component_ipmi_type = {
    include structure_component

    "channel"       : long = 1
    "users"         : structure_users[]
    "net_interface" : string
};

bind "/software/components/ipmi" = component_ipmi_type;

