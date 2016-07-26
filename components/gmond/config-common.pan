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
# gmond, 16.6.0-rc6, rc6_1, Tue Jul 26 2016
#

unique template components/gmond/config-common;

include { 'components/gmond/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/gmond';

#'version' = '16.6.0-rc6';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
