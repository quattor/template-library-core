# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# 
# #
# mysql, 21.4.0-rc2, rc2_1, Sat May 01 2021
#

unique template components/mysql/config;

include 'components/mysql/schema';

# Package to install
"/software/packages" = pkg_repl("ncm-mysql", "21.4.0-rc2_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/mysql';

'active' ?= true;
'dispatch' ?= true;
'version' = '21.4.0';
'dependencies/pre' ?= append('spma');

