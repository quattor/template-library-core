#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#



unique template components/aiiserver/config;

include 'components/aiiserver/schema';

bind '/software/components/aiiserver' = aiiserver_component;

'/software/packages' = pkg_repl('ncm-aiiserver', '18.12.0-rc7_1', 'noarch');

include if_exists('components/aiiserver/site-config');

prefix '/software/components/aiiserver';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '18.12.0';
'dependencies/pre' ?= list('spma');

# This component depends on ncm-ccm configuration for https params
'register_change' = append('/software/components/ccm');
