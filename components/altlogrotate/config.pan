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

'/software/packages' = pkg_repl('ncm-altlogrotate', '17.8.0-1', 'noarch');

include if_exists('components/altlogrotate/site-config.pan');

prefix '/software/components/altlogrotate';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '17.8.0';
'dependencies/pre' ?= list('spma');
