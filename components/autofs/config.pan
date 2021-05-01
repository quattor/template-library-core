#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#



unique template components/autofs/config;

include 'components/autofs/schema';

bind '/software/components/autofs' = autofs_component;

'/software/packages' = pkg_repl('ncm-autofs', '21.4.0-rc2_1', 'noarch');

include if_exists('components/autofs/site-config');

prefix '/software/components/autofs';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.4.0';
'dependencies/pre' ?= list('spma');
