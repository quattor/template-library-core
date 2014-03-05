################################################################################
# This is 'TPL/config.tpl', a ncm-ipmi's file
################################################################################
#
# VERSION:    1.0.3, 25/02/10 16:17
# AUTHOR:     Guillaume PHILIPPON <philippo@lal.in2p3.fr>
# MAINTAINER: Guillaume PHILIPPON <philippo@lal.in2p3.fr>
# LICENSE:    GNU public license
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/ipmi/config;

include { 'components/ipmi/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-ipmi","1.0.3-1","noarch");

'/software/components/ipmi/version' = '1.0.3';

"/software/components/ipmi/dependencies/post" ?= list("spma");
"/software/components/ipmi/active" ?= true;
"/software/components/ipmi/dispatch" ?= true;

