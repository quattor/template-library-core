############################################################
#
# type definition components/dcache
#
# MAINTAINER: Stijn.De.Weirdt@cern.ch
#
# AUTHOR: Stijn.De.Weirdt@cern.ch
#
# VERSION : 3.0.1
#
############################################################

unique template components/dcache/config;
include { 'components/dcache/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-dcache","3.0.1-1","noarch");
 
"/software/components/dcache/dependencies/pre" ?= list("spma","accounts");
"/software/components/dcache/active" ?= true;
"/software/components/dcache/dispatch" ?= true;
