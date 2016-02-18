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
# aiiserver, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/aiiserver/config;

include {'components/aiiserver/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-aiiserver", "16.2.0-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/aiiserver';

#'version' = '16.2.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?=  list ('spma');
# This component depends on ncm-ccm configuration for https params
'register_change' = append('/software/components/ccm');
