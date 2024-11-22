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
# mkgridmap, 24.10.0, 1, Fri Nov 22 2024
#

unique template components/mkgridmap/config-common;

include 'components/mkgridmap/schema';

# Set prefix to root of component configuration.
prefix '/software/components/mkgridmap';

'version' = '24.10.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
