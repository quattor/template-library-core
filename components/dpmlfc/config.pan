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
# dpmlfc, 16.6.0-rc1, rc1_1, Thu Jun 30 2016
#

unique template components/dpmlfc/config;

include 'components/dpmlfc/schema';

# Set prefix to root of component configuration.
prefix '/software/components/dpmlfc';

'version' = '16.6.0';
'active' ?= true;
'dispatch' ?= true;

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-dpmlfc','16.6.0-rc1_1','noarch');
'dependencies/pre' ?= list('spma');

