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
# nsca, 18.12.0-rc5, rc5_1, Fri Apr 12 2019
#

unique template components/nsca/config-common;

include 'components/nsca/schema';

# Set prefix to root of component configuration.
prefix '/software/components/nsca';

#'version' = '18.12.0-rc5';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
