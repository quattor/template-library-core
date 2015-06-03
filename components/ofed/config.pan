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
# ofed, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/ofed/config;

include 'components/ofed/schema';

'/software/packages'=pkg_repl('ncm-ofed','15.4.0-1','noarch');

prefix '/software/components/ofed';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
'version' ?= '15.4.0';
