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
      # aiiserver, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163506, 20140904-1735
      #

unique template components/aiiserver/config;

include {'components/aiiserver/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-aiiserver", "14.8.0-rc5_SNAPSHOT20140904163506", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/aiiserver';

#'version' = '14.8.0-rc5-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?=  list ('spma');
# This component depends on ncm-ccm configuration for https params
'register_change' = append('/software/components/ccm');
