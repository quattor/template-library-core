# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Novak Judit <judit.novak@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# globuscfg, 20.12.0-rc1, rc1_1, Thu Jan 07 2021
#

unique template components/globuscfg/config-common;

include 'components/globuscfg/schema';

# Set prefix to root of component configuration.
prefix '/software/components/globuscfg';

'version' = '20.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
