# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# 
# #
# ldconf, 16.12.0-rc1, rc1_1, Wed Dec 14 2016
#

unique template components/ldconf/config-common;

include 'components/ldconf/schema';

# Set prefix to root of component configuration.
prefix '/software/components/ldconf';

#'version' = '16.12.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
