#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#

#
# Author(s): Daniel Jouvenot
#


unique template components/network/config;

include 'components/network/schema';

bind '/software/components/network' = network_component;

'/software/packages' = pkg_repl('ncm-network', '23.6.0-rc2_1', 'noarch');

include if_exists('components/network/site-config');

prefix '/software/components/network';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '23.6.0';
'dependencies/pre' ?= list('spma');

'register_change' = append("/system/network");
