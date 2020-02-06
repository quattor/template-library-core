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
# hostsaccess, 19.12.0-rc3, rc3_1, Thu Feb 06 2020
#

unique template components/hostsaccess/config-common;

include 'components/hostsaccess/schema';

# Set prefix to root of component configuration.
prefix '/software/components/hostsaccess';

#'version' = '19.12.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
