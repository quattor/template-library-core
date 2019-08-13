#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#



unique template components/gpfs/config;

include 'components/gpfs/schema';

bind '/software/components/gpfs' = gpfs_component;

'/software/packages' = pkg_repl('ncm-gpfs', '18.12.0-rc7_1', 'noarch');

include if_exists('components/gpfs/site-config');

prefix '/software/components/gpfs';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '18.12.0';
'dependencies/pre' ?= list('spma');
