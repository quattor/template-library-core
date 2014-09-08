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
      # named, 14.8.0-rc6, rc6_1, 20140908-1633
      #

unique template components/named/config;

include { 'components/named/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-named", "14.8.0-rc6_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/named';

'version' ?= '14.8.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= append('spma');
 
