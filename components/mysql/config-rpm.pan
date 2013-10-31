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



unique template components/mysql/config-rpm;
include { 'components/mysql/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-mysql", "13.1.2-1", "noarch");

 
'/software/components/mysql/version' ?= '13.1.2';

"/software/components/mysql/dependencies/pre" ?= list("spma");
"/software/components/mysql/active" ?= true;
"/software/components/mysql/dispatch" ?= true;
