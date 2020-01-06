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
# gsissh, 19.12.0-rc1, rc1_1, Mon Jan 06 2020
#

unique template components/gsissh/config-rpm;

include 'components/gsissh/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/gsissh';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-gsissh', '19.12.0-rc1_1', 'noarch');
'dependencies/pre' ?= list('spma');

