################################################################################
# This is 'TPL/config.tpl', a ncm-lcgbdii's file
################################################################################
#
# VERSION:    2.7.2-1, 07/06/12 19:01
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/lcgbdii/config;

include { 'components/lcgbdii/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-lcgbdii','2.7.2-1','noarch'); 

'/software/components/lcgbdii/dependencies/pre' ?= list('spma');

'/software/components/lcgbdii/version' = '2.7.2';
