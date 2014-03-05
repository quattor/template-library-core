################################################################################
# This is 'TPL/config.tpl', a ncm-modprobe's file
################################################################################
#
# VERSION:    1.1.1, 16/05/07 14:20
# AUTHOR:     Hugo Cacote <Hugo.Cacote@cern.ch>
# MAINTAINER: Hugo Cacote <Hugo.Cacote@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/modprobe/config;
include { 'components/modprobe/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-modprobe","1.1.1-1","noarch");

"/software/components/modprobe/dependencies/pre" ?= list("spma");
"/software/components/modprobe/active" ?= true;
"/software/components/modprobe/dispatch" ?= true;

# Example for module <foo>
#"/software/components/modprobe/modules/1/name" = "foo";

