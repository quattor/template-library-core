################################################################################
# This is 'TPL/config.tpl', a ncm-rm's file
################################################################################
#
# VERSION:    1.0.0, 25/06/07 22:49
# AUTHOR:     Novak Judit <judit.novak@cern.ch>
# MAINTAINER: German Cancio <German.Cancio@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

 
unique template components/rm/config;
include { 'components/rm/schema' };
 
# Package to install
"/software/packages"=pkg_repl("ncm-rm","1.0.0-1","noarch");

"/software/components/rm/dependencies/pre" ?= list("spma");
"/software/components/rm/active" ?= true;
"/software/components/rm/dispatch" ?= true;

"/software/components/rm/gftpdcau" ?= false;
"/software/components/rm/gftpstreamssmall" ?= 1;
"/software/components/rm/gftpstreamsbig" ?= 3;
"/software/components/rm/gftpfsizetshold" ?= 100;
