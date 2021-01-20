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

unique template components/openvpn/config;

include 'components/openvpn/schema';
bind "/software/components/openvpn" = structure_component_openvpn;

# Set prefix to root of component configuration.
prefix '/software/components/openvpn';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list('spma');

"/software/packages" = pkg_repl("ncm-openvpn", "20.12.0-1", "noarch");
