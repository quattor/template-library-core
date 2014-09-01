# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Juan Pelegrin <Juan.Pelegrin@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/etcservices/config-rpm;
include {'components/etcservices/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-etcservices", "14.8.0-rc3_SNAPSHOT20140901141103", "noarch");

 
"/software/components/etcservices/dependencies/pre" ?= list("spma");
"/software/components/etcservices/active" ?= true;
"/software/components/etcservices/dispatch" ?= true;
 
