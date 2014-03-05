################################################################################
# This is 'TPL/config.tpl', a ncm-chkconfig's file
################################################################################
#
# VERSION:    1.2.1, 27/11/10 16:35
# AUTHOR:     Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
# MAINTAINER: Vlado Bahyl <Vladimir.Bahyl@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/chkconfig
#
#
#
############################################################
 
unique template components/chkconfig/config;
include { 'components/chkconfig/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-chkconfig","1.2.1-1","noarch");
 
"/software/components/chkconfig/dependencies/pre" ?= list("spma");
"/software/components/chkconfig/active" ?= true;
"/software/components/chkconfig/dispatch" ?= true;
 
