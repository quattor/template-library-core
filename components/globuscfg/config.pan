################################################################################
# This is 'TPL/config.tpl', a ncm-globuscfg's file
################################################################################
#
# VERSION:    1.4.1, 17/05/13 09:17
# AUTHOR:     Novak Judit <judit.novak@cern.ch>
# MAINTAINER: Novak Judit <judit.novak@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

 
unique template components/globuscfg/config;
include { 'components/globuscfg/schema' };

# Package to install 
"/software/packages"=pkg_repl("ncm-globuscfg","1.4.1-1","noarch");

'/software/components/globuscfg/version' = '1.4.1';

"/software/components/globuscfg/dependencies/pre" ?= list("spma");
"/software/components/globuscfg/active" ?= true;
"/software/components/globuscfg/dispatch" ?= true;
