# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#

# 
# #
# gpfs, 15.8.0-rc4, rc4_1, 2015-10-07T14:48:46Z
#

unique template components/gpfs/config;
include 'components/gpfs/schema';

'/software/packages'=pkg_repl('ncm-gpfs','15.8.0-rc4_1','noarch');

prefix '/software/components/gpfs';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;

bind '/software/components/gpfs' = component_gpfs;
