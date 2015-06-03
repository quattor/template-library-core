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

  
unique template components/filecopy/config-rpm;
include { 'components/filecopy/schema' };
 
# Package to install
"/software/packages" = pkg_repl("ncm-filecopy", "15.4.0-1", "noarch");

'/software/components/filecopy/dependencies/pre' ?= list('spma');

'/software/components/filecopy/version' = '15.4.0';
  
