#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#



unique template components/nrpe/config;

include 'components/nrpe/schema';

bind '/software/components/nrpe' = nrpe_component;

'/software/packages' = pkg_repl('ncm-nrpe', '17.12.0-rc1_1', 'noarch');

include if_exists('components/nrpe/site-config.pan');

prefix '/software/components/nrpe';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '17.12.0';
'dependencies/pre' ?= list('spma');
