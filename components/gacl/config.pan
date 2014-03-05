################################################################################
# This is 'TPL/config.tpl', a ncm-gacl's file
################################################################################
#
# VERSION:    1.0.0-1, 16/02/08 23:10
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################


unique template components/gacl/config;
include { 'components/gacl/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-gacl","1.0.0-1","noarch");

"/software/components/gacl/dependencies/pre" ?= list("spma");
"/software/components/gacl/register_change" ?= list('/software/components/gacl','/system/vo');
"/software/components/gacl/active" ?= true;
"/software/components/gacl/dispatch" ?= true;
