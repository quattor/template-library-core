################################################################################
# This is 'TPL/config.tpl', a ncm-yaim's file
################################################################################
#
# VERSION:    1.2.8, 31/03/10 10:20
# AUTHOR:     Thorsten Kleinwort <Thorsten.Kleinwort@yahoo.de>
# MAINTAINER: Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/yaim
#
#
#
#
#
############################################################
  
unique template components/yaim/config;
include { 'components/yaim/schema' };
 
# Package to install
"/software/packages"=pkg_repl("ncm-yaim","1.2.8-1","noarch");
  
"/software/components/yaim/dependencies/pre" ?= list("spma");
"/software/components/yaim/active" ?= true;
"/software/components/yaim/dispatch" ?= true;
  
  
