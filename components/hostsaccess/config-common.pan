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
# hostsaccess, 18.3.0-rc4, rc4_1, Wed May 16 2018
#

unique template components/hostsaccess/config-common;

include 'components/hostsaccess/schema';

# Set prefix to root of component configuration.
prefix '/software/components/hostsaccess';

#'version' = '18.3.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
