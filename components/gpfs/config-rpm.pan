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


unique template components/gpfs/config-rpm;
include { 'components/gpfs/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-gpfs", "14.10.1-SNAPSHOT20150305103434", "noarch");


'/software/components/gpfs/version' ?= '14.10.1';

"/software/components/gpfs/dependencies/pre" ?= list("spma");
"/software/components/gpfs/active" ?= true;
"/software/components/gpfs/dispatch" ?= true;
