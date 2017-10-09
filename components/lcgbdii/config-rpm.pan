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
# lcgbdii, 17.8.0-rc3, rc3_1, Mon Oct 09 2017
#

unique template components/lcgbdii/config-rpm;

include 'components/lcgbdii/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/lcgbdii';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-lcgbdii', '17.8.0-rc3_1', 'noarch');
'dependencies/pre' ?= list('spma');

