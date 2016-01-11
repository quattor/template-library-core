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
# dpmlfc, 15.12.0, 1, 2016-01-11T14:37:03Z
#

unique template components/dpmlfc/config;

include 'components/dpmlfc/schema';

# Set prefix to root of component configuration.
prefix '/software/components/dpmlfc';

'version' = '15.12.0';
'active' ?= true;
'dispatch' ?= true;

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-dpmlfc','15.12.0-1','noarch');
'dependencies/pre' ?= list('spma');

