# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# 

declaration template components/aiiserver/schema;

include {'quattor/schema'};

type structure_aiishellfe = {
	"cdburl"	: type_absoluteURI
	"nodhcp"	? boolean
	"nonbp"		? boolean
	"noosinstall"	? boolean
	"logfile"	? string
	"profile_prefix" ? string
	"noaction"	? boolean
	"use_fqdn"	: boolean = true
	"profile_format" : string = "xml"
        "osinstalldir"  ? string
        "nbpdir"        ? string
};

type structure_aiidhcp = {
    "dhcpconf"		: string = "/etc/dhcpd.conf"
    "restartcmd"	? string
    "norestart"		? boolean
};

type structure_component_aiiserver = {
	include structure_component
	"aii-shellfe"	: structure_aiishellfe
	"aii-dhcp"      : structure_aiidhcp
};

bind "/software/components/aiiserver" = structure_component_aiiserver;
