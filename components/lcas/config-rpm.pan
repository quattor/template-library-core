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
# lcas, 23.9.0-rc1, rc1_1, Fri Oct 06 2023
#

unique template components/lcas/config-rpm;

include 'components/lcas/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/lcas';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-lcas', '23.9.0-rc1_1', 'noarch');
'dependencies/pre' ?= list('spma');

