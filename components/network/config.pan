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
# network, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/network/config;
include 'components/network/schema';

'/software/packages'=pkg_repl('ncm-network','16.2.0-rc3_1','noarch');

prefix '/software/components/network';
'dependencies/pre' ?= list('spma');
'active' ?= true;
'dispatch' ?= true;
'version' = '16.2.0';
'register_change' = append("/system/network");
