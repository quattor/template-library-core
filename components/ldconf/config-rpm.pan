# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


  
unique template components/ldconf/config-rpm;
include {'components/ldconf/schema'};
 
# Package to install
"/software/packages" = pkg_repl("ncm-ldconf", "14.5.0-rc9_1", "noarch");

'/software/components/ldconf/dependencies/pre' ?= list('spma');

'/software/components/ldconf/version' = '14.5.0';
