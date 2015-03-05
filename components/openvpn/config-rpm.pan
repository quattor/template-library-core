# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tristan Suerink <tsuerink@nikhef.nl>
#

# 

################################################################################
# This is 'TPL/config.tpl', a ncm-openvpn's file
################################################################################
#
#
################################################################################
unique template components/openvpn/config-rpm;
include {'components/openvpn/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-openvpn", "14.10.1-SNAPSHOT20150305103437", "noarch");

"/software/components/openvpn/dependencies/pre" ?=  list ("spma");

"/software/components/openvpn/active" ?= true;
"/software/components/openvpn/dispatch" ?= true;

