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
# wlconfig, 24.10.0-rc5, rc5_1, Wed Nov 13 2024
#

unique template components/wlconfig/config-rpm;

include 'components/wlconfig/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/wlconfig';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-wlconfig', '24.10.0-rc5_1', 'noarch');
'dependencies/pre' ?= list('spma');

