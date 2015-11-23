# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#

# #
# Author(s): Daniel Jouvenot
#

# #
# network, 15.8.0, 1, 2015-10-29T11:33:30Z
#

unique template components/network/config;
include 'components/network/schema';

'/software/packages'=pkg_repl('ncm-network','15.8.0-1','noarch');

prefix '/software/components/network';
'dependencies/pre' ?= list('spma');
'active' ?= true;
'dispatch' ?= true;
'version' = '15.8.0';
'register_change' = append("/system/network");
