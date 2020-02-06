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
# profile, 19.12.0-rc3, rc3_1, Thu Feb 06 2020
#

unique template components/profile/config-common;

include 'components/profile/schema';

# Set prefix to root of component configuration.
prefix '/software/components/profile';

#'version' = '19.12.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
