#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#



unique template components/ccm/config;

include 'components/ccm/schema';

bind '/software/components/ccm' = ccm_component;

'/software/packages' = pkg_repl('ncm-ccm', '21.12.1-rc3_1', 'noarch');

include if_exists('components/ccm/site-config');

prefix '/software/components/ccm';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.12.1';
'dependencies/pre' ?= list('spma');
