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
# gmond, 16.2.0-rc2, rc2_1, 2016-02-17T15:40:39Z
#

unique template components/gmond/config-common;

include { 'components/gmond/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/gmond';

#'version' = '16.2.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
