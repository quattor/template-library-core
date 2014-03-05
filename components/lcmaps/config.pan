################################################################################
# This is 'TPL/config.tpl', a ncm-lcmaps's file
################################################################################
#
# VERSION:    1.2.2, 17/10/08 22:45
# AUTHOR:     David Groep <davidg@nikhef.nl>
# MAINTAINER: David Groep <davidg@nikhef.nl>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################


unique template components/lcmaps/config;
include { 'components/lcmaps/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-lcmaps","1.2.2-1","noarch");

'/software/components/lcmaps/version' = '1.2.2';

"/software/components/lcmaps/dependencies/pre" ?= list("spma");
"/software/components/lcmaps/active" ?= true;
"/software/components/lcmaps/dispatch" ?= true;
