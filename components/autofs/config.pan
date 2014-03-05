################################################################################
# This is 'TPL/config.tpl', a ncm-autofs's file
################################################################################
#
# VERSION:    2.0.0-2, 12/02/10 08:54
# AUTHOR:     David Groep <davidg@nikhef.nl>
# MAINTAINER: David Groep <davidg@nikhef.nl>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/autofs
#
#
#
############################################################

unique template components/autofs/config;
include { 'components/autofs/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-autofs","2.0.0-2","noarch");

'/software/components/autofs/version' = '2.0.0';

"/software/components/autofs/dependencies/pre" ?= list("spma");
"/software/components/autofs/active" ?= true;
"/software/components/autofs/dispatch" ?= true;

