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
      # network, 14.8.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140901141111, 20140901-1511
      #

unique template components/network/config-common;

include { 'components/network/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/network';

'version' = '14.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;

"register_change" = append("/system/network");
