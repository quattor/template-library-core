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
# nsca, 20.12.0, 1, Wed Jan 20 2021
#

unique template components/nsca/config-common;

include 'components/nsca/schema';

# Set prefix to root of component configuration.
prefix '/software/components/nsca';

#'version' = '20.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
