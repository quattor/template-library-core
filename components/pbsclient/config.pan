################################################################################
# This is 'TPL/config.tpl', a ncm-pbsclient's file
################################################################################
#
# VERSION:    2.0.2, 26/09/12 17:53
# AUTHOR:     David Groep <davidg@nikhef.nl>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

 
unique template components/pbsclient/config;
include { 'components/pbsclient/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-pbsclient","2.0.2-1","noarch");
 
"/software/components/pbsclient/dependencies/pre" ?= list("spma");
"/software/components/pbsclient/active" ?= true;
"/software/components/pbsclient/dispatch" ?= true;
"/software/components/pbsclient/cpuinfo" ?= {
    if(exists(PBSMOM_CPUINFO_RESOURCES) && is_list(PBSMOM_CPUINFO_RESOURCES) && length(PBSMOM_CPUINFO_RESOURCES) != 0)
        return(PBSMOM_CPUINFO_RESOURCES);
    return(null);
    };
