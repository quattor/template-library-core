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
# hostsaccess, 15.8.0-rc2, rc2_1, 2015-09-24T16:21:27Z
#

unique template components/hostsaccess/config-common;

include { 'components/hostsaccess/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/hostsaccess';

#'version' = '15.8.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
