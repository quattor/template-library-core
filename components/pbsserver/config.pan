################################################################################
# This is 'TPL/config.tpl', a ncm-pbsserver's file
################################################################################
#
# VERSION:    4.0.14, 26/09/12 17:56
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/pbsserver/config;
include { 'components/pbsserver/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-pbsserver','4.0.14-1','noarch'); 
'/software/components/pbsserver/dependencies/pre' ?= list('spma');

'/software/components/pbsserver/version' = '4.0.14';
