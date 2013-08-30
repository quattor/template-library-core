# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


############################################################
#
# type definition components/pacemaker
#
#
#
############################################################
 
unique template components/pacemaker/config-rpm;
include { 'components/pacemaker/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-pacemaker", "13.1.1-1", "noarch");

 
"/software/components/pacemaker/dependencies/pre" ?= list("spma");
"/software/components/pacemaker/active" ?= true;
"/software/components/pacemaker/dispatch" ?= true;
 
