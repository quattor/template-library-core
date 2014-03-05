################################################################################
# This is 'TPL/config.tpl', a ncm-profile's file
################################################################################
#
# VERSION:    2.1.2, 15/10/08 23:44
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Guillaume Philippon <philippo@lal.in2p3.fr>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/profile/config;
include { 'components/profile/schema' };
include { 'components/profile/functions' };

# Package to install
'/software/packages'=pkg_repl('ncm-profile','2.1.2-1','noarch');
'/software/components/profile/dependencies/pre' ?= list('spma');

'/software/components/profile/version' ?= '2.1.2';
