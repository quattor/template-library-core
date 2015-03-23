# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#

# 


unique template components/ofed/config-rpm;
include { 'components/ofed/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-ofed", "15.2.0-1", "noarch");


'/software/components/ofed/version' ?= '15.2.0';

"/software/components/ofed/dependencies/pre" ?= list("spma");
"/software/components/ofed/active" ?= true;
"/software/components/ofed/dispatch" ?= true;
