# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 
# #
# ccm, 15.4.0-rc13, rc13_1, 2015-06-03T10:01:23Z
#

unique template components/ccm/config;
include 'components/ccm/schema';

'/software/packages' = pkg_repl('ncm-ccm','15.4.0-rc13_1','noarch');

prefix '/software/components/ccm';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
'version' ?= '15.4.0';
