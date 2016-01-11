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
# interactivelimits, 15.12.0, 1, 2016-01-11T14:30:21Z
#

unique template components/interactivelimits/config;

include 'components/interactivelimits/schema';
include 'pan/functions';

# Package to install.
"/software/packages" = pkg_repl("ncm-interactivelimits", "15.12.0-1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/interactivelimits';

'version' = '15.12.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' = list("spma");
