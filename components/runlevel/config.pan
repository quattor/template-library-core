################################################################################
# This is 'TPL/config.tpl', a ncm-runlevel's file
################################################################################
#
# VERSION:    1.0.0, 26/06/07 00:13
# AUTHOR:     Veronique Lefebure <Veronique.Lefebure@cern.ch>
# MAINTAINER: Veronique Lefebure <Veronique.Lefebure@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/runlevel/config;
include { 'components/runlevel/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-runlevel","1.0.0-2","noarch");
 
"/software/components/runlevel/dependencies/pre" ?= list("spma");
"/software/components/runlevel/active" ?= true;
"/software/components/runlevel/dispatch" ?= true;
 
