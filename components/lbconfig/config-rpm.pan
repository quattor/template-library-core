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
# lbconfig, 18.6.0-rc2, rc2_1, Wed Jul 25 2018
#

unique template components/lbconfig/config-rpm;

include 'components/lbconfig/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/lbconfig';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-lbconfig', '18.6.0-rc2_1', 'noarch');
'dependencies/pre' ?= list('spma');

