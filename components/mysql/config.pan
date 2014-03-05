################################################################################
# This is 'TPL/config.tpl', a ncm-mysql's file
################################################################################
#
# VERSION:    1.4.0-1, 22/02/12 08:10
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/mysql/config;
include { 'components/mysql/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-mysql","1.4.0-1","noarch");
 
'/software/components/mysql/version' ?= '1.4.0';

"/software/components/mysql/dependencies/pre" ?= list("spma");
"/software/components/mysql/active" ?= true;
"/software/components/mysql/dispatch" ?= true;
