# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



unique template components/shorewall/config-rpm;
include { 'components/shorewall/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-shorewall", "14.8.0-rc5_1", "noarch");


'/software/components/shorewall/version' ?= '14.8.0';

"/software/components/shorewall/dependencies/pre" ?= list("spma");
"/software/components/shorewall/active" ?= true;
"/software/components/shorewall/dispatch" ?= true;
