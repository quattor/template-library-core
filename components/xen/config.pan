################################################################################
# This is 'TPL/config.tpl', a ncm-xen's file
################################################################################
#
# VERSION:    0.1.7, 19/06/08 14:42
# AUTHOR:     Stephen Childs (childss@cs.tcd.ie)
# MAINTAINER: Stephen Childs (childss@cs.tcd.ie)
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/xen/config;

include { 'components/xen/schema' };

# Package to install.
"/software/packages"=pkg_repl("ncm-xen","0.1.7-1","noarch");

# standard component settings
"/software/components/xen/dependencies/pre" = list("spma");
"/software/components/xen/active" ?=  true ;
"/software/components/xen/dispatch" ?=  true ;
"/software/components/xen/register_change/0" = "/software/components/xen";



