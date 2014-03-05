################################################################################
# This is 'TPL/config.tpl', a ncm-wmsclient's file
################################################################################
#
# VERSION:    1.3.3-1, 19/02/10 15:23
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/wmsclient/config;
include { 'components/wmsclient/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-wmsclient','1.3.3-1','noarch'); 
'/software/components/wmsclient/dependencies/pre' ?= list('spma');

'/software/components/wmsclient/version' = '1.3.3';

# In addition, you should probably add in your configuration
# /system/edg/config/EDG_LOCATION and/or /system/glite/config/GLITE_LOCATION 
# as registered path, according to your configuration.
'/software/components/wmsclient/register_change' ?= 
  list('/system/vo');
