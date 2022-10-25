#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#



unique template components/cdp/config;

include 'components/cdp/schema';

bind '/software/components/cdp' = cdp_component;

'/software/packages' = pkg_repl('ncm-cdp', '21.12.1-rc3_1', 'noarch');

include if_exists('components/cdp/site-config');

prefix '/software/components/cdp';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.12.1';
'dependencies/pre' ?= list('spma');
