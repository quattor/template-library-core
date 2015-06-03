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
# mkgridmap, 15.4.0-rc14, rc14_1, 2015-06-03T12:08:17Z
#

unique template components/mkgridmap/config-common;

include { 'components/mkgridmap/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/mkgridmap';

'version' = '15.4.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
