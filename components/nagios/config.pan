################################################################################
# This is 'TPL/config.tpl', a ncm-nagios's file
################################################################################
#
# VERSION:    1.4.13, 28/07/10 12:08
# AUTHOR:     Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# MAINTAINER: Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
################################################################################
# This is 'TPL/config.tpl', a ncm-nagios's file
################################################################################
#
#
################################################################################
unique template components/nagios/config;
include {'components/nagios/functions'};
include {'components/nagios/schema'};

# Package to install
"/software/packages"=pkg_repl("ncm-nagios","1.4.13-1","noarch");
"/software/components/nagios/dependencies/pre" ?=  list ("spma");

"/software/components/nagios/active" ?= true;
"/software/components/nagios/dispatch" ?= true;
