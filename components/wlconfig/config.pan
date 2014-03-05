################################################################################
# This is 'TPL/config.tpl', a ncm-wlconfig's file
################################################################################
#
# VERSION:    1.1.2, 29/03/07 20:49
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/wlconfig/config;
include { 'components/wlconfig/schema' };

# Package to install.
'/software/packages'=pkg_repl('ncm-wlconfig','1.1.2-1','noarch'); 
'/software/components/wlconfig/dependencies/pre' ?= list('spma');

'/software/components/wlconfig/version' = '1.1.2';

'/software/components/wlconfig/register_change' ?= 
  list('/system/edg/config/EDG_LOCATION',
       '/system/edg/config/EDG_LOCATION_VAR');
