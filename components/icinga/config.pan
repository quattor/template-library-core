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
# icinga, 19.12.0-rc4, rc4_1, Tue Feb 11 2020
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
"/software/packages" = pkg_repl("ncm-icinga", "19.12.0-rc4_1", "noarch");
