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
# nsca, 16.6.0-rc3, rc3_1, Fri Jul 08 2016
#

unique template components/nsca/config-common;

include { 'components/nsca/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/nsca';

#'version' = '16.6.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
