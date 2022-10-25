#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#



unique template components/systemd/config;

include 'components/systemd/schema';

bind '/software/components/systemd' = systemd_component;

'/software/packages' = pkg_repl('ncm-systemd', '21.12.1-1', 'noarch');

include if_exists('components/systemd/site-config');

prefix '/software/components/systemd';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.12.1';
'dependencies/pre' ?= list('spma');

include 'components/systemd/functions';
