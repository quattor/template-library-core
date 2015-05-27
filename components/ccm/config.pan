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
# ccm, 15.4.0-rc4, rc4_1, 2015-05-27T12:42:00Z
#

unique template components/ccm/config;
include 'components/ccm/schema';

'/software/packages' = pkg_repl('ncm-ccm','15.4.0-rc4_1','noarch');

prefix '/software/components/ccm';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
'version' ?= '15.4.0';
