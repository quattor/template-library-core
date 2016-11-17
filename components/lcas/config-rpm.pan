# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# lcas, 16.10.0-rc2, rc2_1, Thu Nov 17 2016
#

unique template components/lcas/config-rpm;

include { 'components/lcas/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/lcas';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-lcas','16.10.0-rc2_1','noarch');
'dependencies/pre' ?= list('spma');

