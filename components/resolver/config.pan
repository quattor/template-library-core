#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   njw <njw>
#



unique template components/resolver/config;

include 'components/resolver/schema';

bind '/software/components/resolver' = resolver_component;

'/software/packages' = pkg_repl('ncm-resolver', '21.12.1-rc3_1', 'noarch');

include if_exists('components/resolver/site-config');

prefix '/software/components/resolver';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.12.1';
'dependencies/pre' ?= list('spma');
