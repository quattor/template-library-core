################################################################################
# This is 'TPL/config.tpl', a ncm-nfs's file
################################################################################
#
# VERSION:    2.0.0, 08/03/09 23:44
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Guillaume Philippon <philippo@lal.in2p3.fr>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/nfs/config;
include { 'components/nfs/schema' };
 
# Package to install
'/software/packages'=pkg_repl('ncm-nfs','2.0.0-4','noarch');
'/software/components/nfs/dependencies/pre' ?= list('spma');

'/software/components/nfs/version' = '2.0.0';
  
