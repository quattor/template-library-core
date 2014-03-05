################################################################################
# This is 'TPL/config.tpl', a ncm-pbsknownhosts's file
################################################################################
#
# VERSION:    1.1.2, 29/03/07 20:46
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/pbsknownhosts/config;
include { 'components/pbsknownhosts/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-pbsknownhosts','1.1.2-1','noarch'); 
'/software/components/pbsknownhosts/dependencies/pre' ?= list('spma');

'/software/components/pbsknownhosts/version' = '1.1.2';
