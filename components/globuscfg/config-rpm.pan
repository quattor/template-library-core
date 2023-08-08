# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Novak Judit <judit.novak@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# globuscfg, 23.6.0-rc3, rc3_1, Tue Aug 08 2023
#

unique template components/globuscfg/config-rpm;

include 'components/globuscfg/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/globuscfg';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-globuscfg', '23.6.0-rc3_1', 'noarch');
'dependencies/pre' ?= list('spma');

