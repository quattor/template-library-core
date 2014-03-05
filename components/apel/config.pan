################################################################################
# This is 'TPL/config.tpl', a ncm-apel's file
################################################################################
#
# VERSION:    1.4.0, 02/07/10 11:57
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/apel/config;

include { 'components/apel/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-apel','1.4.0-1','noarch');
'/software/components/apel/dependencies/pre' ?= list('spma');

'/software/components/apel/version' = '1.4.0';
