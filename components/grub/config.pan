################################################################################
# This is 'TPL/config.tpl', a ncm-grub's file
################################################################################
#
# VERSION:    2.1.2, 09/08/07 18:29
# AUTHOR:     German Cancio <German.Cancio@cern.ch>
# MAINTAINER: German Cancio <German.Cancio@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/grub/config;

include { 'components/grub/schema' };

include { 'pan/functions' };

# Package to install.
"/software/packages"=pkg_repl("ncm-grub","2.1.2-1","noarch");

# standard component settings
"/software/components/grub/active" ?=  true ;
"/software/components/grub/dispatch" ?=  true ;
"/software/components/grub/dependencies/pre" = push( "spma" );
"/software/components/grub/register_change/0" = "/system/kernel/version";

# component specific settings
"/system/kernel/version" ?=  undef ;
# you may need to set /software/components/grub/prefix if not using
# /boot ...

