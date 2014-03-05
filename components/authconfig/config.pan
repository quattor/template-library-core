################################################################################
# This is 'TPL/config.tpl', a ncm-authconfig's file
################################################################################
#
# VERSION:    1.1.6, 13/02/08 22:33
# AUTHOR:     David Groep <davidg@nikhef.nl>
# MAINTAINER: David Groep <davidg@nikhef.nl>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/authconfig/config;
include { 'components/authconfig/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-authconfig","1.1.6-1","noarch");

"/software/components/authconfig/dependencies/pre" ?= list("spma");
"/software/components/authconfig/active" ?= true;
"/software/components/authconfig/dispatch" ?= true;

"/software/components/authconfig/safemode" ?= false;

"/software/components/authconfig/usemd5" ?= true;
"/software/components/authconfig/useshadow" ?= true;
"/software/components/authconfig/usecache" ?= true;

