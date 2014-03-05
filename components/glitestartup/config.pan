################################################################################
# This is 'TPL/config.tpl', a ncm-glitestartup's file
################################################################################
#
# VERSION:    1.1.1-1, 09/03/12 14:22
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/glitestartup/config;
include { 'components/glitestartup/schema' };
include { 'components/glitestartup/functions' };

# Package to install
'/software/packages'=pkg_repl('ncm-glitestartup','1.1.1-1','noarch'); 

'/software/components/glitestartup/dependencies/pre' ?= list('spma');

'/software/components/glitestartup/register_change' ?= list('/software/components/glitestartup','/system/glite/config');

'/software/components/glitestartup/version' = '1.1.1';
