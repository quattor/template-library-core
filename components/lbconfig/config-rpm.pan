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
# lbconfig, 15.4.0-rc14, rc14_1, 2015-06-03T12:08:17Z
#

unique template components/lbconfig/config-rpm;

include { 'components/lbconfig/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/lbconfig';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-lbconfig','15.4.0-rc14_1','noarch');
'dependencies/pre' ?= list('spma');

