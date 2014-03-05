################################################################################
# This is 'TPL/config.tpl', a ncm-syslog's file
################################################################################
#
# VERSION:    0.1.7, 12/03/08 09:23
# AUTHOR:     Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
# MAINTAINER: Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/syslog/config;
include { 'components/syslog/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-syslog","0.1.7-2","noarch");

"/software/components/syslog/dependencies/pre" ?= list("spma");
"/software/components/syslog/active" ?= true;
"/software/components/syslog/dispatch" ?= true;

