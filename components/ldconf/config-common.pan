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
# ldconf, 18.6.0-rc3, rc3_1, Wed Jul 25 2018
#

unique template components/ldconf/config-common;

include 'components/ldconf/schema';

# Set prefix to root of component configuration.
prefix '/software/components/ldconf';

#'version' = '18.6.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
