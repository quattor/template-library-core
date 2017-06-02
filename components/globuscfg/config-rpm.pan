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
# globuscfg, 17.3.0-rc1, rc1_1, Fri Jun 02 2017
#

unique template components/globuscfg/config-rpm;

include 'components/globuscfg/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/globuscfg';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-globuscfg', '17.3.0-rc1_1', 'noarch');
'dependencies/pre' ?= list('spma');

