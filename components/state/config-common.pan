# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   German Cancio <German.Cancio@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # state, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141729, 20140507-1516
      #

unique template components/state/config-common;

include { 'components/state/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/state';

#'version' = '14.4.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
