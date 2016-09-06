# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# lcmaps, 16.8.0-rc1, rc1_1, Tue Sep 06 2016
#

unique template components/lcmaps/config-common;

include { 'components/lcmaps/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/lcmaps';

'version' = '16.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
