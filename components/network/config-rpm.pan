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
# network, 15.2.0, 1, 20150323-1248
#

unique template components/network/config-rpm;

include { 'components/network/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/network';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-network','15.2.0-1','noarch');
'dependencies/pre' ?= list('spma');

