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
# ldconf, 16.2.0-rc2, rc2_1, 2016-02-17T15:40:39Z
#

unique template components/ldconf/config-common;

include { 'components/ldconf/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/ldconf';

#'version' = '16.2.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
