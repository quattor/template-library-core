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

  
unique template components/ldconf/config-rpm;
include {'components/ldconf/schema'};
 
# Package to install
"/software/packages" = pkg_repl("ncm-ldconf", "15.2.0-1", "noarch");

'/software/components/ldconf/dependencies/pre' ?= list('spma');

'/software/components/ldconf/version' = '15.2.0';
