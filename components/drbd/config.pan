################################################################################
# This is 'TPL/config.tpl', a ncm-drbd's file
################################################################################
#
# VERSION:    1.0.5-1.0.5, 18/10/08 08:30
# AUTHOR:     Ronald Starink <ronalds@nikhef.nl>
# MAINTAINER: Ronald Starink <ronalds@nikhef.nl>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/drbd
#
#
############################################################
 
unique template components/drbd/config;
include { 'components/drbd/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-drbd","1.0.5-1","noarch");
 
'/software/components/drbd/version' ?= '1.0.5';

"/software/components/drbd/dependencies/pre" ?= list("spma");
"/software/components/drbd/active" ?= true;
"/software/components/drbd/dispatch" ?= true;
 
