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



unique template components/gpfs/config-rpm;
include { 'components/gpfs/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-gpfs", "14.4.0-rc3_SNAPSHOT20140507141718", "noarch");


'/software/components/gpfs/version' ?= '14.4.0';

"/software/components/gpfs/dependencies/pre" ?= list("spma");
"/software/components/gpfs/active" ?= true;
"/software/components/gpfs/dispatch" ?= true;
