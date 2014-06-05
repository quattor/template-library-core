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
      # network, 14.5.0-rc7, rc7_1, 20140605-1100
      #


unique template components/network/config;


include { 'components/network/config-common' };
include { 'components/network/config-rpm' };
