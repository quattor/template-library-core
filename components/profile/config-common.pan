# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# 
# #
      # profile, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163506, 20140904-1735
      #

unique template components/profile/config-common;

include { 'components/profile/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/profile';

#'version' = '14.8.0-rc5-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
