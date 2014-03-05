################################################################################
# This is 'TPL/config.tpl', a ncm-cdp's file
################################################################################
#
# VERSION:    1.0.3, 29/03/07 20:37
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/cdp/config;
include { 'components/cdp/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-cdp','1.0.3-1','noarch');
'/software/components/cdp/dependencies/pre' ?= list('spma');

'/software/components/cdp/version' = '1.0.3';

