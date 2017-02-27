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
# ofed, 17.2.0-rc1, rc1_1, Mon Feb 27 2017
#

unique template components/ofed/config;

include 'components/ofed/schema';

'/software/packages'=pkg_repl('ncm-ofed','17.2.0-rc1_1','noarch');

prefix '/software/components/ofed';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
'version' ?= '17.2.0';
