################################################################################
# This is 'TPL/config.tpl', a ncm-postgresql's file
################################################################################
#
# VERSION:    0.1.0, 26/08/06 15:00
# AUTHOR:     Stijn.De.Weirdt@cern.ch
# MAINTAINER: Stijn.De.Weirdt@cern.ch
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/postgresql
#
#
#
#
############################################################

unique template components/postgresql/config;
include { 'components/postgresql/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-postgresql","0.1.2-2","noarch");
 
 ## chkconfig is needed because the component can start postgres using the start script
"/software/components/postgresql/dependencies/pre" ?= list("spma","chkconfig");
"/software/components/postgresql/active" ?= true;
"/software/components/postgresql/dispatch" ?= true;
