# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Loic Brarda <Loic.Brarda@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#




unique template components/pvss/config-rpm;
include {'components/pvss/schema'};

# Common settings
#"/software/components/pvss/dependencies/pre" = list("spma");
"/software/components/pvss/active" = true;
"/software/components/pvss/dispatch" ?= true;
"/software/packages" = pkg_repl("ncm-pvss", "14.4.0-rc3_SNAPSHOT20140507141727", "noarch");
