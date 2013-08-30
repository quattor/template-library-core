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
      # network, 13.1.1, 1, 20130830-1520
      #

unique template components/network/config-common;

include { 'components/network/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/network';

'version' = '13.1.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;

"register_change" = append("/system/network");
