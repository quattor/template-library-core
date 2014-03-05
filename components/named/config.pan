################################################################################
# This is 'TPL/config.tpl', a ncm-named's file
################################################################################
#
# VERSION:    2.0.1, 23/06/10 16:28
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/named
#
#
#
#
############################################################

unique template components/named/config;

include { 'components/named/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-named","2.0.1-1","noarch");
 
'/software/components/named/version' ?= '2.0.1';

"/software/components/named/dependencies/pre" ?= list("spma");
"/software/components/named/active" ?= true;
"/software/components/named/dispatch" ?= true;
 
