# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Vladimir Bahyl <Vladimir.Bahyl@cern.ch>
#

# 
# #
# interactivelimits, 21.12.1-rc3, rc3_1, Tue Oct 25 2022
#

unique template components/interactivelimits/config;

include 'components/interactivelimits/schema';

bind "/software/components/interactivelimits" = component_interactivelimits_type;

include 'pan/functions';

# Package to install.
"/software/packages" = pkg_repl("ncm-interactivelimits", "21.12.1-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/interactivelimits';

'version' = '21.12.1';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' = list("spma");
