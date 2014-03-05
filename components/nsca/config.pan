################################################################################
# This is 'TPL/config.tpl', a ncm-nsca's file
################################################################################
#
# VERSION:    1.0.1, 10/02/09 21:31
# AUTHOR:     Ronald Starink <ronalds@nikhef.nl>
# MAINTAINER: Ronald Starink <ronalds@nikhef.nl>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
################################################################################
# This is 'TPL/config.tpl', a ncm-nsca's file
################################################################################
#
#
################################################################################
unique template components/nsca/config;
include {'components/nsca/schema'};

# Package to install
"/software/packages"=pkg_repl("ncm-nsca","1.0.1-1","noarch");
"/software/components/nsca/dependencies/pre" ?=  list ("spma", "accounts");

"/software/components/nsca/active" ?= true;
"/software/components/nsca/dispatch" ?= true;

