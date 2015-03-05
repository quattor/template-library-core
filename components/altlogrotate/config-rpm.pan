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


unique template components/altlogrotate/config-rpm;
include { 'components/altlogrotate/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-altlogrotate", "14.10.1-SNAPSHOT20150305103435", "noarch");

'/software/components/altlogrotate/dependencies/pre' ?= list('spma');

'/software/components/altlogrotate/version' = '14.10.1';
