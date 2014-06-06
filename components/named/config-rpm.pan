# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


############################################################
#
# type definition components/named
#
#
#
#
############################################################

unique template components/named/config-rpm;

include { 'components/named/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-named", "14.5.0-1", "noarch");

 
'/software/components/named/version' ?= '14.5.0';

"/software/components/named/dependencies/pre" ?= list("spma");
"/software/components/named/active" ?= true;
"/software/components/named/dispatch" ?= true;
 
