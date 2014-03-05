################################################################################
# This is 'TPL/config.tpl', a ncm-etcservices's file
################################################################################
#
# VERSION:    1.1.0, 25/06/07 23:55
# AUTHOR:     Juan Pelegrin <Juan.Pelegrin@cern.ch>
# MAINTAINER: Juan Pelegrin <Juan.Pelegrin@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/etcservices/config;
include { 'components/etcservices/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-etcservices","1.1.0-1","noarch");
 
"/software/components/etcservices/dependencies/pre" ?= list("spma");
"/software/components/etcservices/active" ?= true;
"/software/components/etcservices/dispatch" ?= true;
 
