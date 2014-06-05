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
      # shorewall, 14.5.0-rc8, rc8_1, 20140605-1139
      #

unique template components/shorewall/config-common;

include { 'components/shorewall/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/shorewall';

#'version' = '14.5.0-rc8';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
