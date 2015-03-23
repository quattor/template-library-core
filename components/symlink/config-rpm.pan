# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# 

############################################################
#
# type definition components/symlink
#
#
#
#
############################################################

unique template components/symlink/config-rpm;
include { 'components/symlink/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-symlink", "15.2.0-1", "noarch");

 
"/software/components/symlink/dependencies/pre" ?= list("spma");
"/software/components/symlink/active" ?= true;
"/software/components/symlink/dispatch" ?= true;
"/software/components/symlink/options/exists" ?= false;
"/software/components/symlink/options/replace/none" ?= "yes";
 
