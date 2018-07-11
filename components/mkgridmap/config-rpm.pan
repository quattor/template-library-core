# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# mkgridmap, 18.6.0-rc1, rc1_1, Wed Jul 11 2018
#

unique template components/mkgridmap/config-rpm;

include 'components/mkgridmap/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/mkgridmap';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-mkgridmap', '18.6.0-rc1_1', 'noarch');
'dependencies/pre' ?= list('spma');

