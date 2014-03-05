################################################################################
# This is 'TPL/config.tpl', a ncm-filesystems's file
################################################################################
#
# VERSION:    0.10.2, 16/09/08 16:37
# AUTHOR:     Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# MAINTAINER: Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
unique template components/filesystems/config;

include {'components/filesystems/schema'};

"/software/packages" = pkg_repl ("ncm-filesystems", "0.10.2-1", "noarch");
"/software/components/filesystems/dependencies/pre" = list ("spma");
"/software/components/filesystems/active" ?= true;
"/software/components/filesystems/dispatch" ?= true;
#"/software/components/filesystems/register_change" = list ("/system/filesystems", "/system/blockdevices");

