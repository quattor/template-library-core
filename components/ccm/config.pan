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
# ccm, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/ccm/config;

include 'components/ccm/schema';

bind '/software/components/ccm' = component_ccm;

'/software/packages' = pkg_repl('ncm-ccm','15.12.0-rc3_1','noarch');

prefix '/software/components/ccm';
'dependencies/pre' ?= list('spma');
'active' ?= true;
'dispatch' ?= true;
'version' ?= '15.12.0';
