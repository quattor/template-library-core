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
# directoryservices, 16.12.0-rc2, rc2_1, Thu Dec 15 2016
#

unique template components/directoryservices/config-common;

include 'components/directoryservices/schema';

# Set prefix to root of component configuration.
prefix '/software/components/directoryservices';

#'version' = '16.12.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
