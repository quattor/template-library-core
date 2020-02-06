# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#

# 

unique template components/shorewall/config;

include 'components/shorewall/schema';

bind "/software/components/shorewall" = component_shorewall;

# Package to install
"/software/packages" = pkg_repl("ncm-shorewall", "19.12.0-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/shorewall';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
