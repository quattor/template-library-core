# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# 
# #
# altlogrotate, 15.12.0, 1, 2016-01-11T14:30:21Z
#

unique template components/altlogrotate/config;

include { 'components/altlogrotate/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-altlogrotate", "15.12.0-1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/altlogrotate';

'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list('spma');
'version' = '15.12.0';
