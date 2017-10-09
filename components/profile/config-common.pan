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
# profile, 17.8.0-rc2, rc2_1, Mon Oct 09 2017
#

unique template components/profile/config-common;

include 'components/profile/schema';

# Set prefix to root of component configuration.
prefix '/software/components/profile';

#'version' = '17.8.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
