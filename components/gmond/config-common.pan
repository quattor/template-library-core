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
# gmond, 16.12.0, 1, Wed Jan 04 2017
#

unique template components/gmond/config-common;

include 'components/gmond/schema';

# Set prefix to root of component configuration.
prefix '/software/components/gmond';

#'version' = '16.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
