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

'/software/packages' = pkg_repl('ncm-ccm', '19.12.0-rc4_1', 'noarch');

include if_exists('components/ccm/site-config');

prefix '/software/components/ccm';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '19.12.0';
'dependencies/pre' ?= list('spma');
