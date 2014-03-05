################################################################################
# This is 'TPL/config.tpl', a ncm-filecopy's file
################################################################################
#
# VERSION:    1.4.0-1, 29/01/10 10:20
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Guillaume Philippon <philippo@lal.in2p3.fr>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
  
unique template components/filecopy/config;
include { 'components/filecopy/schema' };
 
# Package to install
'/software/packages'=pkg_repl('ncm-filecopy','1.4.0-1','noarch');
'/software/components/filecopy/dependencies/pre' ?= list('spma');

'/software/components/filecopy/version' = '1.4.0';
  
