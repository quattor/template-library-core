# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#

# #
# Author(s): Daniel Jouvenot
#

# #
      # network, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163511, 20140904-1735
      #

unique template components/network/config-rpm;

include { 'components/network/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/network';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-network','14.8.0-rc5_SNAPSHOT20140904163511','noarch');
'dependencies/pre' ?= list('spma');

