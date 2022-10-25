#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#



unique template components/cups/config;

include 'components/cups/schema';

bind '/software/components/cups' = cups_component;

'/software/packages' = pkg_repl('ncm-cups', '21.12.1-1', 'noarch');

include if_exists('components/cups/site-config');

prefix '/software/components/cups';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.12.1';
'dependencies/pre' ?= list('spma');
