# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# gold, 16.2.0-rc1, rc1_1, 2016-02-16T12:49:17Z
#

unique template components/gold/config-common;

include { 'components/gold/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/gold';

'version' = '16.2.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
