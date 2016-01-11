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
# network, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/network/config;
include 'components/network/schema';

'/software/packages'=pkg_repl('ncm-network','15.12.0-rc3_1','noarch');

prefix '/software/components/network';
'dependencies/pre' ?= list('spma');
'active' ?= true;
'dispatch' ?= true;
'version' = '15.12.0';
'register_change' = append("/system/network");
