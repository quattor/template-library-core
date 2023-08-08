#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#



unique template components/altlogrotate/config;

include 'components/altlogrotate/schema';

bind '/software/components/altlogrotate' = altlogrotate_component;

'/software/packages' = pkg_repl('ncm-altlogrotate', '23.6.0-rc3_1', 'noarch');

include if_exists('components/altlogrotate/site-config');

prefix '/software/components/altlogrotate';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '23.6.0';
'dependencies/pre' ?= list('spma');
