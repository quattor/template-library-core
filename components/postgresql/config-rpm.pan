# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   wouter.depypere@ugent.be <wouter.depypere@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


############################################################
#
# type definition components/postgresql
#
#
#
#
############################################################

unique template components/postgresql/config-rpm;
include {'components/postgresql/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-postgresql", "14.5.0-rc10_1", "noarch");

 
 ## chkconfig is needed because the component can start postgres using the start script
"/software/components/postgresql/dependencies/pre" ?= list("spma","chkconfig");
"/software/components/postgresql/active" ?= true;
"/software/components/postgresql/dispatch" ?= true;
