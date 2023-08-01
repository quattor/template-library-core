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
# profile, 23.6.0-rc1, rc1_1, Tue Aug 01 2023
#

unique template components/profile/config-common;

include 'components/profile/schema';

# Set prefix to root of component configuration.
prefix '/software/components/profile';

#'version' = '23.6.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
