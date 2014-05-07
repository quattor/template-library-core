# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Andras Horvath <Andras.Horvath@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


############################################################
#
# type definition components/linuxha
#
#
#
############################################################
 
unique template components/linuxha/config-rpm;
include {'components/linuxha/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-linuxha", "14.4.0-rc3_SNAPSHOT20140507141725", "noarch");

 
"/software/components/linuxha/dependencies/pre" ?= list("spma");
"/software/components/linuxha/active" ?= true;
"/software/components/linuxha/dispatch" ?= true;
 
