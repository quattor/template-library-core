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
# ofed, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/ofed/config;

include 'components/ofed/schema';

'/software/packages'=pkg_repl('ncm-ofed','15.12.0-rc3_1','noarch');

prefix '/software/components/ofed';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
'version' ?= '15.12.0';
