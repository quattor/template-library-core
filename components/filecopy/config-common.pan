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
# filecopy, 24.10.0-rc4, rc4_1, Fri Nov 08 2024
#

unique template components/filecopy/config-common;

include 'components/filecopy/schema';

# Set prefix to root of component configuration.
prefix '/software/components/filecopy';

#'version' = '24.10.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
