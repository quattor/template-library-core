################################################################################
# This is 'TPL/config.tpl', a ncm-frontiersquid's file
################################################################################
#
# VERSION:    2.0.0, 20/04/10 17:23
# AUTHOR:     Guillaume PHILIPPON <philippo@lal.in2p3.fr>
# MAINTAINER: Flavia DONNO <Flavia.Donno@cern.ch>
# LICENSE:    GNU public license
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/frontiersquid/config;

include { 'components/frontiersquid/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-frontiersquid","2.0.0-5","noarch");

'/software/components/frontiersquid/version' = '2.0.0';

"/software/components/frontiersquid/dependencies/pre" ?= list("filecopy","spma");
"/software/components/frontiersquid/dependencies/post" ?= list("dirperm");
"/software/components/frontiersquid/active" ?= true;
"/software/components/frontiersquid/dispatch" ?= true;
