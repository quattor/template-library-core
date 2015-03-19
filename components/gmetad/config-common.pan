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
# gmetad, 15.2.0-rc6, rc6_1, 20150319-2029
#

unique template components/gmetad/config-common;

include { 'components/gmetad/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/gmetad';

#'version' = '15.2.0-rc6';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
