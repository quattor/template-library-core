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
# freeipa, 17.2.0-rc1, rc1_1, Mon Feb 27 2017
#

unique template components/freeipa/config;
include 'components/freeipa/schema';

bind '/software/components/freeipa' = component_freeipa;

'/software/packages' = pkg_repl('ncm-freeipa','17.2.0-rc1_1','noarch');

prefix '/software/components/freeipa';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
