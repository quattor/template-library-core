################################################################################
# This is 'TPL/config.tpl', a ncm-symlink's file
################################################################################
#
# VERSION:    1.2.0, 04/04/07 11:27
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/symlink
#
#
#
#
############################################################

unique template components/symlink/config;
include { 'components/symlink/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-symlink","1.2.0-1","noarch");
 
"/software/components/symlink/dependencies/pre" ?= list("spma");
"/software/components/symlink/active" ?= true;
"/software/components/symlink/dispatch" ?= true;
"/software/components/symlink/options/exists" ?= false;
"/software/components/symlink/options/replace/none" ?= "yes";
 
