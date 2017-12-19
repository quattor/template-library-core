# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   wouter.depypere@ugent.be <wouter.depypere@ugent.be>
#

# 

unique template components/postgresql/config;

include 'components/postgresql/schema';

bind "/software/components/postgresql" = component_postgresql;

# Package to install
"/software/packages" = pkg_repl("ncm-postgresql", "17.12.0-rc2_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/postgresql';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list("spma");
