################################################################################
# This is 'TPL/config.tpl', a ncm-sudo's file
################################################################################
#
# VERSION:    1.1.9, 23/07/10 13:38
# AUTHOR:     Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# MAINTAINER: Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
# template pro_software_component_sudo

unique template components/sudo/config;
include {'components/sudo/schema'};
include {'components/sudo/functions'};

# Package to install:
# Package to install
"/software/packages"=pkg_repl("ncm-sudo","1.1.9-1","noarch");
 # This component should be run after ncm-accounts, if present.
"/software/components/sudo/dependencies/pre" = {
	if (exists ("/software/components/accounts")) {
		return (list("accounts"));
	} else {
		return (list("spma"));
	};
};
"/software/components/sudo/active" ?= true;
"/software/components/sudo/dispatch" ?= true;
