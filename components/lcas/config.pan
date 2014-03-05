################################################################################
# This is 'TPL/config.tpl', a ncm-lcas's file
################################################################################
#
# VERSION:    1.1.0, 07/02/10 23:08
# AUTHOR:     David Groep <davidg@nikhef.nl>
# MAINTAINER: David Groep <davidg@nikhef.nl>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################


unique template components/lcas/config;
include { 'components/lcas/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-lcas","1.1.0-2","noarch");

"/software/components/lcas/dependencies/pre" ?= list("spma");

'/software/components/lcas/version' = '1.1.0';
