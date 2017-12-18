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
# lcmaps, 17.12.0-rc1, rc1_1, Mon Dec 18 2017
#

unique template components/lcmaps/config-rpm;

include 'components/lcmaps/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/lcmaps';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-lcmaps', '17.12.0-rc1_1', 'noarch');
'dependencies/pre' ?= list('spma');

