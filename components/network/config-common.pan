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
# network, 14.10.1-SNAPSHOT, SNAPSHOT20150305103437, 20150305-1034
#

unique template components/network/config-common;

include { 'components/network/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/network';

'version' = '14.10.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;

"register_change" = append("/system/network");
