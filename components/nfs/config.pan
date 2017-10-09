#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#



unique template components/nfs/config;

include 'components/nfs/schema';

bind '/software/components/nfs' = nfs_component;

'/software/packages' = pkg_repl('ncm-nfs', '17.8.0-rc3_1', 'noarch');

include if_exists('components/nfs/site-config.pan');

prefix '/software/components/nfs';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '17.8.0';
'dependencies/pre' ?= list('spma');
