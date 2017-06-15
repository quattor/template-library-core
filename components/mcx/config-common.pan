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
# mcx, 17.3.0, 1, Thu Jun 15 2017
#

unique template components/mcx/config-common;

include 'components/mcx/schema';

# Set prefix to root of component configuration.
prefix '/software/components/mcx';

#'version' = '17.3.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
