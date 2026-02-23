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
# hostsaccess, 26.2.0-rc1, rc1_1, Mon Feb 23 2026
#

unique template components/hostsaccess/config-common;

include 'components/hostsaccess/schema';

# Set prefix to root of component configuration.
prefix '/software/components/hostsaccess';

#'version' = '26.2.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
