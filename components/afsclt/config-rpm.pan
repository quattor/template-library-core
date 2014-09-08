# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/afsclt/config-rpm;
include { 'components/afsclt/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-afsclt", "14.8.0-1", "noarch");

 
"/software/components/afsclt/dependencies/pre" ?= list("spma");
"/software/components/afsclt/active" ?= true;
"/software/components/afsclt/dispatch" ?= true;
 
