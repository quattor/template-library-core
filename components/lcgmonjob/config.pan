################################################################################
# This is 'TPL/config.tpl', a ncm-lcgmonjob's file
################################################################################
#
# VERSION:    2.1.2, 29/03/07 20:46
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/lcgmonjob/config;
include { 'components/lcgmonjob/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-lcgmonjob','2.1.2-1','noarch'); 
'/software/components/lcgmonjob/dependencies/pre' ?= list('spma','wlconfig');

'/software/components/lcgmonjob/version' = '2.1.2';

