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
# ldconf, 15.8.0-rc4, rc4_1, 2015-10-07T14:48:46Z
#

unique template components/ldconf/config-common;

include { 'components/ldconf/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/ldconf';

#'version' = '15.8.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
