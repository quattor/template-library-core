################################################################################
# This is 'TPL/config.tpl', a ncm-openvpn's file
################################################################################
#
# VERSION:    1.0.0, 10/02/09 13:37
# AUTHOR:     Tristan Suerink <tsuerink@nikhef.nl>
# MAINTAINER: Tristan Suerink <tsuerink@nikhef.nl>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
################################################################################
# This is 'TPL/config.tpl', a ncm-openvpn's file
################################################################################
#
#
################################################################################
unique template components/openvpn/config;
include {'components/openvpn/schema'};

# Package to install
"/software/packages"=pkg_repl("ncm-openvpn","1.0.0-1","noarch");
"/software/components/openvpn/dependencies/pre" ?=  list ("spma");

"/software/components/openvpn/active" ?= true;
"/software/components/openvpn/dispatch" ?= true;

