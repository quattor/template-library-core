# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Nick Williams <Nick.Williams@morganstanley.com>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # mcx, 14.8.0-rc6, rc6_1, 20140908-1633
      #

unique template components/mcx/config-common;

include { 'components/mcx/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/mcx';

#'version' = '14.8.0-rc6';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
