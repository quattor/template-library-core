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
# #
# aiiserver, 15.12.0-rc1, rc1_1, 2015-12-12T17:19:33Z
#

unique template components/aiiserver/config;

include {'components/aiiserver/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-aiiserver", "15.12.0-rc1_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/aiiserver';

#'version' = '15.12.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?=  list ('spma');
# This component depends on ncm-ccm configuration for https params
'register_change' = append('/software/components/ccm');
