################################################################################
# This is 'TPL/config.tpl', a ncm-sysconfig's file
################################################################################
#
# VERSION:    1.2.0, 30/01/08 15:18
# AUTHOR:     Charles Loomis <loomis@lal.in2p3.fr>
# MAINTAINER: Charles Loomis <loomis@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
 
unique template components/sysconfig/config;
include { 'components/sysconfig/schema' };
 
# Package to install
'/software/packages'=pkg_repl('ncm-sysconfig','1.2.0-1','noarch');
'/software/components/sysconfig/dependencies/pre' ?= list('spma');

'/software/components/sysconfig/version' ?= '1.2.0';
