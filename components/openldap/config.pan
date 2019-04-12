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


unique template components/openldap/config;

include 'components/openldap/schema';

'/software/packages'=pkg_repl('ncm-openldap','18.12.0-rc6_1','noarch');

prefix '/software/components/openldap';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
'version' = '18.12.0';
