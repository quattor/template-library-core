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
# mkgridmap, 18.12.0-rc3, rc3_1, Wed Apr 10 2019
#

unique template components/mkgridmap/config-common;

include 'components/mkgridmap/schema';

# Set prefix to root of component configuration.
prefix '/software/components/mkgridmap';

'version' = '18.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
