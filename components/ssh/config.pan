################################################################################
# This is 'TPL/config.tpl', a ncm-ssh's file
################################################################################
#
# VERSION:    2.0.0-2, 15/04/09 23:45
# AUTHOR:     Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
# MAINTAINER: Teemu Sidoroff <Teemu.Sidoroff@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/ssh/config;

include { 'components/ssh/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-ssh","2.0.0-2","noarch");

'/software/components/ssh/version' ?= '2.0.0';

"/software/components/ssh/dependencies/pre" ?= list("spma");
"/software/components/ssh/active" ?= true;
"/software/components/ssh/dispatch" ?= true;
