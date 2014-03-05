# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Wouter Depypere <Wouter.Depypere@UGent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # icinga, 13.1.2, 1, 20131015-1106
      #

unique template components/icinga/config-rpm;
include {'components/icinga/functions'};
include {'components/icinga/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-icinga", "13.1.2-1", "noarch");

"/software/components/icinga/dependencies/pre" ?=  list ("spma");

"/software/components/icinga/active" ?= true;
"/software/components/icinga/dispatch" ?= true;
