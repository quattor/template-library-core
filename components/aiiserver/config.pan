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
      # aiiserver, 14.5.0-rc11, rc11_1, 20140606-1524
      #

unique template components/aiiserver/config;

include {'components/aiiserver/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-aiiserver", "14.5.0-rc11_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/aiiserver';

#'version' = '14.5.0-rc11';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
'pre' ?=  list ('spma');
# This component depends on ncm-ccm configuration for https params
'register_change' = append('/software/components/ccm');
