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
# lcgmonjob, 15.12.0-rc2, rc2_1, 2016-01-07T14:03:08Z
#

unique template components/lcgmonjob/config-common;

include { 'components/lcgmonjob/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/lcgmonjob';

'version' = '15.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
