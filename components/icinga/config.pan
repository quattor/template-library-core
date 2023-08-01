# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Wouter Depypere <Wouter.Depypere@UGent.be>
#

# 
# #
# icinga, 23.6.0-rc1, rc1_1, Tue Aug 01 2023
#

unique template components/icinga/config;

include 'components/icinga/schema';
include 'components/icinga/functions';

bind "/software/components/icinga" = structure_component_icinga;

# Set prefix to root of component configuration.
prefix '/software/components/icinga';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list('spma');

# Package to install
"/software/packages" = pkg_repl("ncm-icinga", "23.6.0-rc1_1", "noarch");
