# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # gpfs, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163508, 20140904-1735
      #

unique template components/gpfs/config-common;

include { 'components/gpfs/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/gpfs';

#'version' = '14.8.0-rc5-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
