# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): David Groep
#

# #
      # authconfig, 14.8.0-rc4-SNAPSHOT, rc4_SNAPSHOT20140901174524, 20140901-1845
      #

unique template components/authconfig/config-common;

include { 'components/authconfig/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/authconfig';

#'version' = '14.8.0-rc4-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
