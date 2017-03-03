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
# gmetad, 17.2.0, 1, Fri Mar 03 2017
#

unique template components/gmetad/config-common;

include 'components/gmetad/schema';

# Set prefix to root of component configuration.
prefix '/software/components/gmetad';

#'version' = '17.2.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
