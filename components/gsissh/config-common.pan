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
# gsissh, 21.12.0-rc1, rc1_1, Mon Dec 20 2021
#

unique template components/gsissh/config-common;

include 'components/gsissh/schema';

# Set prefix to root of component configuration.
prefix '/software/components/gsissh';

'version' = '21.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
