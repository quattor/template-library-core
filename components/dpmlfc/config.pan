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
# dpmlfc, 23.6.0-rc4, rc4_1, Tue Aug 08 2023
#

unique template components/dpmlfc/config;

include 'components/dpmlfc/schema';

# Set prefix to root of component configuration.
prefix '/software/components/dpmlfc';

'version' = '23.6.0';
'active' ?= true;
'dispatch' ?= true;

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-dpmlfc', '23.6.0-rc4_1', 'noarch');
'dependencies/pre' ?= list('spma');

