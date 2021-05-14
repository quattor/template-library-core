#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   wouter.depypere@ugent.be <wouter.depypere@ugent.be>
#



unique template components/postgresql/config;

include 'components/postgresql/schema';

bind '/software/components/postgresql' = postgresql_component;

'/software/packages' = pkg_repl('ncm-postgresql', '21.4.0-1', 'noarch');

include if_exists('components/postgresql/site-config');

prefix '/software/components/postgresql';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.4.0';
'dependencies/pre' ?= list('spma');
