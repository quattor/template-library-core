################################################################################
# This is 'TPL/config.tpl', a ncm-vomsclient's file
################################################################################
#
# VERSION:    2.1.1-1, 13/01/11 14:55
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/vomsclient/config;
include { 'components/vomsclient/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-vomsclient','2.1.1-1','noarch');
'/software/components/vomsclient/dependencies/pre' ?= list('spma');

'/software/components/vomsclient/version' = '2.1.1';
