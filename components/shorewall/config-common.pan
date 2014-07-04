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
      # shorewall, 14.6.0, 1, 20140704-1557
      #

unique template components/shorewall/config-common;

include { 'components/shorewall/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/shorewall';

#'version' = '14.6.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
