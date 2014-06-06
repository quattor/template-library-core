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
      # gpfs, 14.5.0-rc11, rc11_1, 20140606-1524
      #

unique template components/gpfs/config-common;

include { 'components/gpfs/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/gpfs';

#'version' = '14.5.0-rc11';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
