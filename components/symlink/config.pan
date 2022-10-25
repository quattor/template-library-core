#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#



unique template components/symlink/config;

include 'components/symlink/schema';

bind '/software/components/symlink' = symlink_component;

'/software/packages' = pkg_repl('ncm-symlink', '21.12.1-1', 'noarch');

include if_exists('components/symlink/site-config');

prefix '/software/components/symlink';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.12.1';
'dependencies/pre' ?= list('spma');
'options/exists' ?= false;
'options/replace' ?= dict('none', "yes");
