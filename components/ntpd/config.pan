################################################################################
# This is 'TPL/config.tpl', a ncm-ntpd's file
################################################################################
#
# VERSION:    1.1.5-1, 23/10/08 05:41
# AUTHOR:     Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
# MAINTAINER: Jan Iven <jan.iven@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/ntpd/config;
include { 'components/ntpd/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-ntpd","1.1.5-1","noarch");

'/software/components/ntpd/version' ?= '1.1.5';

"/software/components/ntpd/dependencies/pre" ?= list("spma");
"/software/components/ntpd/active" ?= true;
"/software/components/ntpd/dispatch" ?= true;
