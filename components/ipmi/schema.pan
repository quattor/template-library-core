################################################################################
# This is 'TPL/schema.tpl', a ncm-ipmi's file
################################################################################
#
# VERSION:    1.0.3, 25/02/10 16:17
# AUTHOR:     Guillaume PHILIPPON <philippo@lal.in2p3.fr>
# MAINTAINER: Guillaume PHILIPPON <philippo@lal.in2p3.fr>
# LICENSE:    GNU public license
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

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

