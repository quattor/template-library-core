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
# wlconfig, 18.6.0-rc3, rc3_1, Wed Jul 25 2018
#

unique template components/wlconfig/config-rpm;

include 'components/wlconfig/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/wlconfig';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-wlconfig', '18.6.0-rc3_1', 'noarch');
'dependencies/pre' ?= list('spma');

