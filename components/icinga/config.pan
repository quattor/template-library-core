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
# icinga, 15.12.0-rc2, rc2_1, 2016-01-07T13:57:35Z
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
"/software/packages" = pkg_repl("ncm-icinga", "15.12.0-rc2_1", "noarch");
