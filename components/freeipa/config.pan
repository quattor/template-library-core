# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# 
# #
# freeipa, 16.12.0-rc2, rc2_1, Thu Dec 15 2016
#

unique template components/freeipa/config;
include 'components/freeipa/schema';

bind '/software/components/freeipa' = component_freeipa;

'/software/packages' = pkg_repl('ncm-freeipa','16.12.0-rc2_1','noarch');

prefix '/software/components/freeipa';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
