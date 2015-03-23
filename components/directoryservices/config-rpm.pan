# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Nick Williams <Nick.Williams@morganstanley.com>
#

# 

############################################################
#
# type definition components/directoryservices
#
#
#
#
############################################################

unique template components/directoryservices/config-rpm;
include { 'components/directoryservices/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-directoryservices", "15.2.0-1", "noarch");

 
"/software/components/directoryservices/dependencies/pre" ?= list("directoryservices");
"/software/components/directoryservices/active" ?= true;
"/software/components/directoryservices/dispatch" ?= true;
 
