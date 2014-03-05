################################################################################
# This is 'TPL/config.tpl', a ncm-useraccess's file
################################################################################
#
# VERSION:    1.4.1, 16/09/08 16:39
# AUTHOR:     Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# MAINTAINER: Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
# template pro_software_component_useraccess

unique template components/useraccess/config;
include {'components/useraccess/schema'};

# Package to install:
# Package to install
"/software/packages"=pkg_repl("ncm-useraccess","1.4.1-1","noarch");
 # This component should be run after ncm-accounts, if present.
"/software/components/useraccess/dependencies/pre" = {
	if (exists ("/software/components/accounts")) {
		return (list("accounts"));
	} else {
		return (list("spma"));
	};
};
"/software/components/useraccess/active" ?= true;
"/software/components/useraccess/dispatch" ?= true;

#valid "/software/components/useraccess" = valid_roles ("/software/components/useraccess");
