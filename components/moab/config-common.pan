# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # moab, 14.8.0-rc3, rc3_1, 20140901-1845
      #

unique template components/moab/config-common;

include { 'components/moab/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/moab';

'version' = '14.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
