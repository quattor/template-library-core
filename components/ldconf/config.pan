################################################################################
# This is 'TPL/config.tpl', a ncm-ldconf's file
################################################################################
#
# VERSION:    1.3.3, 29/03/07 20:38
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
  
unique template components/ldconf/config;
include { 'components/ldconf/schema' };
 
# Package to install
'/software/packages'=pkg_repl('ncm-ldconf','1.3.3-1','noarch');
'/software/components/ldconf/dependencies/pre' ?= list('spma');

'/software/components/ldconf/version' = '1.3.3';
