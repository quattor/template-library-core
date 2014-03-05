################################################################################
# This is 'TPL/config.tpl', a ncm-gmond's file
################################################################################
#
# VERSION:    1.0.1, 23/04/09 09:49
# AUTHOR:     Ronald Starink <ronalds@nikhef.nl>
# MAINTAINER: Ronald Starink <ronalds@nikhef.nl>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
################################################################################
# This is 'TPL/config.tpl', a ncm-gmond's file
################################################################################
#
#
################################################################################
unique template components/gmond/config;
include {'components/gmond/schema'};

# Package to install
"/software/packages"=pkg_repl("ncm-gmond","1.0.1-1","noarch");
"/software/components/gmond/dependencies/pre" ?=  list ("spma", "accounts");

"/software/components/gmond/active" ?= true;
"/software/components/gmond/dispatch" ?= true;

