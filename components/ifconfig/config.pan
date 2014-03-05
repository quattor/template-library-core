################################################################################
# This is 'TPL/config.tpl', a ncm-ifconfig's file
################################################################################
#
# VERSION:    1.1.0, 26/06/07 00:07
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/ifconfig/config;
include { 'components/ifconfig/schema' };

include { 'components/ifconfig/functions' };

# Package to install
"/software/packages"=pkg_repl("ncm-ifconfig","1.1.0-1","noarch");
 
"/software/components/ifconfig/dependencies/pre" ?= list("spma");
"/software/components/ifconfig/active" ?= true;
"/software/components/ifconfig/dispatch" ?= true;
 
