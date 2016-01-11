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
# mysql, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/mysql/config;

include { 'components/mysql/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-mysql", "15.12.0-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/mysql';

'active' ?= true;
'dispatch' ?= true;
'version' = '15.12.0';
'dependencies/pre' ?= append('spma');

