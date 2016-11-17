# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# 

unique template components/aiiserver/config;

include 'components/aiiserver/schema';

bind "/software/components/aiiserver" = structure_component_aiiserver;

# Package to install
"/software/packages" = pkg_repl("ncm-aiiserver", "16.10.0-rc2_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/aiiserver';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?=  list('spma');
# This component depends on ncm-ccm configuration for https params
'register_change' = append('/software/components/ccm');
