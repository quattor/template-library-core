################################################################################
# This is 'TPL/config.tpl', a ncm-gsissh's file
################################################################################
#
# VERSION:    1.1.2, 29/03/07 20:44
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/gsissh/config;
include { 'components/gsissh/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-gsissh','1.1.2-1','noarch');
'/software/components/gsissh/dependencies/pre' ?= list('spma');

'/software/components/gsissh/version' = '1.1.2';
