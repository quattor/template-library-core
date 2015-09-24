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
# nsca, 15.8.0-rc3, rc3_1, 2015-09-24T16:59:54Z
#

unique template components/nsca/config-common;

include { 'components/nsca/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/nsca';

#'version' = '15.8.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
