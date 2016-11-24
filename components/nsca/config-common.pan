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
# nsca, 16.10.0-rc4, rc4_1, Thu Nov 24 2016
#

unique template components/nsca/config-common;

include { 'components/nsca/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/nsca';

#'version' = '16.10.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
