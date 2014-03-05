################################################################################
# This is 'TPL/config.tpl', a ncm-hostsaccess's file
################################################################################
#
# VERSION:    1.1.3, 29/03/07 20:38
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/hostsaccess/config;
include { 'components/hostsaccess/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-hostsaccess','1.1.3-1','noarch');
'/software/components/hostsaccess/dependencies/pre' ?= list('spma');

'/software/components/hostsaccess/version' = '1.1.3';
