################################################################################
# This is 'TPL/config.tpl', a ncm-nrpe's file
################################################################################
#
# VERSION:    1.1.0, 22/07/09 09:55
# AUTHOR:     Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# MAINTAINER: Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
################################################################################
# This is 'TPL/config.tpl', a ncm-nrpe's file
################################################################################
#
#
################################################################################
unique template components/nrpe/config;
include {'components/nrpe/schema'};

# Package to install
"/software/packages"=pkg_repl("ncm-nrpe","1.1.0-1","noarch");
"/software/components/nrpe/dependencies/pre" ?=  list ("spma");

"/software/components/nrpe/active" ?= true;
"/software/components/nrpe/dispatch" ?= true;

