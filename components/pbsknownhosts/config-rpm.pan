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
# pbsknownhosts, 23.9.0-rc1, rc1_1, Fri Oct 06 2023
#

unique template components/pbsknownhosts/config-rpm;

include 'components/pbsknownhosts/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/pbsknownhosts';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-pbsknownhosts', '23.9.0-rc1_1', 'noarch');
'dependencies/pre' ?= list('spma');

