#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Stijn De Weirdt <Stijn.DeWeirdt@UGent.be>
#



unique template components/path/config;

include 'components/path/schema';

bind '/software/components/path' = path_component;

'/software/packages' = pkg_repl('ncm-path', '21.12.1-1', 'noarch');

include if_exists('components/path/site-config');

prefix '/software/components/path';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.12.1';
'dependencies/pre' ?= list('spma');
