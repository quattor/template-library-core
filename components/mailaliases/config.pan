################################################################################
# This is 'TPL/config.tpl', a ncm-mailaliases's file
################################################################################
#
# VERSION:    1.1.1, 12/06/07 14:40
# AUTHOR:     Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
# MAINTAINER: Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/mailaliases/config;

include { 'components/mailaliases/schema' };

# Package to install.
"/software/packages"=pkg_repl("ncm-mailaliases","1.1.1-1","noarch");

# standard component settings
"/software/components/mailaliases/active" ?=  true ;
"/software/components/mailaliases/dispatch" ?=  true ;
#"/software/components/mailaliases/dependencies/pre" = push( "spma" );


