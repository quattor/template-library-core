################################################################################
# This is 'TPL/config.tpl', a ncm-lbconfig's file
################################################################################
#
# VERSION:    1.0.2, 29/03/07 20:45
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/lbconfig/config;
include { 'components/lbconfig/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-lbconfig','1.0.2-1','noarch'); 
'/software/components/lbconfig/dependencies/pre' ?= list('spma');

'/software/components/lbconfig/version' = '1.0.2';

'/software/components/lbconfig/register_change' ?=
  list('/system/edg/config/EDG_LOCATION',
       '/system/edg/config/EDG_LOCATION_VAR');
