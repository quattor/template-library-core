################################################################################
# This is 'TPL/config.tpl', a ncm-afsclt's file
################################################################################
#
# VERSION:    1.5.6, 29/09/08 23:38
# AUTHOR:     Jaroslaw Polok <jaroslaw.polok@cern.ch>
# MAINTAINER: Jan Iven <jan.iven@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/afsclt/config;
include { 'components/afsclt/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-afsclt","1.5.6-1","noarch");
 
"/software/components/afsclt/dependencies/pre" ?= list("spma");
"/software/components/afsclt/active" ?= true;
"/software/components/afsclt/dispatch" ?= true;
 
