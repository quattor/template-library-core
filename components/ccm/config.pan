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
# ccm, 15.8.0-rc2, rc2_1, 2015-09-24T16:21:27Z
#

unique template components/ccm/config;

include 'components/ccm/schema';

bind '/software/components/ccm' = component_ccm;

'/software/packages' = pkg_repl('ncm-ccm','15.8.0-rc2_1','noarch');

prefix '/software/components/ccm';
'dependencies/pre' ?= list('spma');
'active' ?= true;
'dispatch' ?= true;
'version' ?= '15.8.0';
