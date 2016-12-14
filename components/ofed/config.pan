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
# ofed, 16.12.0-rc1, rc1_1, Wed Dec 14 2016
#

unique template components/ofed/config;

include 'components/ofed/schema';

'/software/packages'=pkg_repl('ncm-ofed','16.12.0-rc1_1','noarch');

prefix '/software/components/ofed';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
'version' ?= '16.12.0';
