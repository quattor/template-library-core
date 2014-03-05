###############################################################################
# This is 'TPL/config.tpl', a ncm-httpd's file
###############################################################################
#
# VERSION:    1.0.11-1, 11/10/08 08:38
# AUTHOR:     Judit Novak <Judit.Novak@cern.ch>
# MAINTAINER: Judit Novak <Judit.Novak@cern.ch>
# LICENSE:    GNU public license
#
###############################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
###############################################################################


unique template components/httpd/config;

include { 'components/httpd/schema' };

 
# Package to install
"/software/packages"=pkg_repl("ncm-httpd","1.0.11-1","noarch");

'/software/components/httpd/version' ?= '1.0.11';

"/software/components/httpd/dependencies/pre" ?= list("spma");
"/software/components/httpd/active" ?= true;
"/software/components/httpd/dispatch" ?= true;


