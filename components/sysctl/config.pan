################################################################################
# This is 'TPL/config.tpl', a ncm-sysctl's file
################################################################################
#
# VERSION:    3.0.1-1, 04/08/09 09:59
# AUTHOR:     Benjamin Chardi <Benjamin.Chardi.Marco@cern.ch>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/sysctl/config;

include { 'components/sysctl/schema' };


# Package to install
'/software/packages'=pkg_repl('ncm-sysctl','3.0.1-1','noarch');
 
"/software/components/sysctl/dependencies/pre" ?= list("spma");
"/software/components/sysctl/active" ?= true;
"/software/components/sysctl/dispatch" ?= true;
 
