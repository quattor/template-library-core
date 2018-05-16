# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# wlconfig, 18.3.0-rc4, rc4_1, Wed May 16 2018
#

unique template components/wlconfig/config-common;

include 'components/wlconfig/schema';

# Set prefix to root of component configuration.
prefix '/software/components/wlconfig';

'version' = '18.3.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
