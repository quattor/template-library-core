# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # dpmlfc, 14.8.0, 1, 20140908-1650
      #

unique template components/dpmlfc/config-rpm;

include { 'components/dpmlfc/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/dpmlfc';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-dpmlfc','14.8.0-1','noarch');
'dependencies/pre' ?= list('spma');

