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
# gsissh, 17.7.0-rc3, rc3_1, Wed Aug 09 2017
#

unique template components/gsissh/config-rpm;

include 'components/gsissh/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/gsissh';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-gsissh', '17.7.0-rc3_1', 'noarch');
'dependencies/pre' ?= list('spma');

