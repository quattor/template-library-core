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
      # gold, 14.8.0-rc4, rc4_1, 20140904-1839
      #

unique template components/gold/config-common;

include { 'components/gold/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/gold';

'version' = '14.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
