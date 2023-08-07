# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ronald Starink <ronalds@nikhef.nl>
#

# 
# #
# gmetad, 23.6.0-rc2, rc2_1, Mon Aug 07 2023
#

unique template components/gmetad/config-common;

include 'components/gmetad/schema';

# Set prefix to root of component configuration.
prefix '/software/components/gmetad';

#'version' = '23.6.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
