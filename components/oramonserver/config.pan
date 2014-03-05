################################################################################
# This is 'TPL/config.tpl', a ncm-oramonserver's file
################################################################################
#
# VERSION:    1.0.14, 05/09/07 12:05
# AUTHOR:     Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
# MAINTAINER: Miroslav Siket <Miroslav.siket@cern.ch>,Dennis Waldron <Dennis.Wladron@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/oramonserver/config;

include { 'components/oramonserver/schema' };

# Package to install.
"/software/packages"=pkg_repl("ncm-oramonserver","1.0.14-1","noarch");

# standard component settings
"/software/components/oramonserver/dependencies/pre" = list("spma");
"/software/components/oramonserver/active" ?=  true ;
"/software/components/oramonserver/dispatch" ?=  true ;
"/software/components/oramonserver/register_change/0" = "/software/components/oramonserver";



