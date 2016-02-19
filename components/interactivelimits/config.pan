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
# interactivelimits, 16.2.0, 1, 2016-02-19T15:57:52Z
#

unique template components/interactivelimits/config;

include 'components/interactivelimits/schema';
include 'pan/functions';

# Package to install.
"/software/packages" = pkg_repl("ncm-interactivelimits", "16.2.0-1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/interactivelimits';

'version' = '16.2.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' = list("spma");
