################################################################################
# This is 'TPL/config.tpl', a ncm-altlogrotate's file
################################################################################
#
# VERSION:    1.1.8, 07/10/11 08:27
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Guillaume Philippon <philippo@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/altlogrotate/config;
include { 'components/altlogrotate/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-altlogrotate','1.1.8-1','noarch');
'/software/components/altlogrotate/dependencies/pre' ?= list('spma');

'/software/components/altlogrotate/version' = '1.1.8';
