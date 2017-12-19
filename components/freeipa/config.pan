#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#



unique template components/freeipa/config;

include 'components/freeipa/schema';

bind '/software/components/freeipa' = freeipa_component;

'/software/packages' = pkg_repl('ncm-freeipa', '17.12.0-rc2_1', 'noarch');

include if_exists('components/freeipa/site-config.pan');

prefix '/software/components/freeipa';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '17.12.0';
'dependencies/pre' ?= list('spma');
