################################################################################
# This is 'TPL/config.tpl', a ncm-mkgridmap's file
################################################################################
#
# VERSION:    1.3.2-1, 23/11/08 00:51
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/mkgridmap/config;
include { 'components/mkgridmap/schema' };

# Package to install
'/software/packages' = pkg_repl('ncm-mkgridmap','1.3.2-1','noarch');
'/software/components/mkgridmap/dependencies/pre' ?= list('spma');

'/software/components/mkgridmap/version' = '1.3.2';

'/software/components/mkgridmap/register_change' ?= list('/system/vo','/system/edg');

