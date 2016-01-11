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
# gpfs, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/gpfs/config;
include 'components/gpfs/schema';

'/software/packages'=pkg_repl('ncm-gpfs','15.12.0-rc3_1','noarch');

prefix '/software/components/gpfs';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;

bind '/software/components/gpfs' = component_gpfs;
