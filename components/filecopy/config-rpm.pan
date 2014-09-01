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


  
unique template components/filecopy/config-rpm;
include { 'components/filecopy/schema' };
 
# Package to install
"/software/packages" = pkg_repl("ncm-filecopy", "14.8.0-rc4_SNAPSHOT20140901174520", "noarch");

'/software/components/filecopy/dependencies/pre' ?= list('spma');

'/software/components/filecopy/version' = '14.8.0';
  
