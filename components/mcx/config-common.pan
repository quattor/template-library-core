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
# mcx, 15.2.0-rc5, rc5_1, 20150319-1200
#

unique template components/mcx/config-common;

include { 'components/mcx/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/mcx';

#'version' = '15.2.0-rc5';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
