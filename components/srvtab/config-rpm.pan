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


############################################################
#
# type definition components/srvtab
#
#
############################################################
 
unique template components/srvtab/config-rpm;
include {'components/srvtab/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-srvtab", "14.4.0-rc3_SNAPSHOT20140507141716", "noarch");

 
"/software/components/srvtab/active" ?= true;
"/software/components/srvtab/verbose" ?= false;
"/software/components/srvtab/overwrite" ?= false;
"/software/components/srvtab/server" ?= "configure.your.arc.server";
 
