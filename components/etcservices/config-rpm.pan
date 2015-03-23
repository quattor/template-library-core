# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Juan Pelegrin <Juan.Pelegrin@cern.ch>
#

# 

# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/etcservices/config-rpm;
include {'components/etcservices/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-etcservices", "15.2.0-1", "noarch");

 
"/software/components/etcservices/dependencies/pre" ?= list("spma");
"/software/components/etcservices/active" ?= true;
"/software/components/etcservices/dispatch" ?= true;
 
