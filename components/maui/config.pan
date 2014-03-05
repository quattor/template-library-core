################################################################################
# This is 'TPL/config.tpl', a ncm-maui's file
################################################################################
#
# VERSION:    1.1.3, 29/03/07 20:46
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/maui/config;
include { 'components/maui/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-maui','1.1.3-1','noarch'); 
'/software/components/maui/dependencies/pre' ?= list('spma');

'/software/components/maui/version' = '1.1.3';
