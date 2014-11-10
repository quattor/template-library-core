# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # mysql, 14.10.0-rc3, rc3_1, 20141110-1446
      #

unique template components/mysql/config;

include { 'components/mysql/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-mysql", "14.10.0-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/mysql';

'active' ?= true;
'dispatch' ?= true;
'version' = '14.10.0';
'dependencies/pre' ?= append('spma');

