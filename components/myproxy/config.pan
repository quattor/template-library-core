################################################################################
# This is 'TPL/config.tpl', a ncm-myproxy's file
################################################################################
#
# VERSION:    1.2.2-1, 17/05/13 15:23
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/myproxy/config;
include { 'components/myproxy/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-myproxy','1.2.2-1','noarch'); 

'/software/components/myproxy/version' = '1.2.2';

'/software/components/myproxy/dependencies/pre' ?= list('spma');
