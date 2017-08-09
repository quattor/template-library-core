# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Nick Williams <Nick.Williams@morganstanley.com>
#

# 
# #
# mcx, 17.7.0-rc3, rc3_1, Wed Aug 09 2017
#

unique template components/mcx/config-common;

include 'components/mcx/schema';

# Set prefix to root of component configuration.
prefix '/software/components/mcx';

#'version' = '17.7.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
