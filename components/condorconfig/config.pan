################################################################################
# This is 'TPL/config.tpl', a ncm-condorconfig's file
################################################################################
#
# VERSION:    1.1.0, 09/04/08 16:55
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/condorconfig/config;
include { 'components/condorconfig/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-condorconfig','1.1.0-1','noarch'); 
'/software/components/condorconfig/dependencies/pre' ?= list('spma');

'/software/components/condorconfig/version' = '1.1.0';

