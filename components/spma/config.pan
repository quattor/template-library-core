################################################################################
# This is 'TPL/config.tpl', a ncm-spma's file
################################################################################
#
# VERSION:    2.0.0, 06/09/10 17:49
# AUTHOR:     German Cancio <German.Cancio@cern.ch>
# MAINTAINER: German Cancio <German.Cancio@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/spma/config;
include { 'components/spma/schema' };
include { 'components/spma/functions' };

# Package to install
"/software/packages" = pkg_repl("ncm-spma","2.0.0-1","noarch");

"/software/components/spma/active" ?= true;
"/software/components/spma/dispatch" ?= true;
"/software/components/spma/register_change" ?= list("/software/packages");

"/software/components/spma/run" ?= "yes";
