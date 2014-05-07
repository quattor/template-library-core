# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume PHILIPPON <guillaume.philippon@lal.in2p3.fr>
#

# #
# Author(s): Guillaume PHILIPPON
#

# #
      # ganglia, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141732, 20140507-1516
      #

unique template components/ganglia/config-common;

include { 'components/ganglia/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/ganglia';

#'version' = '14.4.0-rc3_SNAPSHOT20140507141732';
'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
