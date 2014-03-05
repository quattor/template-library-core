################################################################################
# This is 'TPL/config.tpl', a ncm-gip2's file
################################################################################
#
# VERSION:    2.7.2, 07/06/12 18:58
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>,Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/gip2/config;
include { 'components/gip2/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-gip2','2.7.2-1','noarch');

'/software/components/gip2/dependencies/pre' ?= list('spma');

'/software/components/gip2/version' = '2.7.2';
