# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn.De.Weirdt@cern.ch <Stijn.De.Weirdt@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# dcache, 17.3.0, 1, Thu Jun 15 2017
#

unique template components/dcache/config-common;

include 'components/dcache/schema';

# Set prefix to root of component configuration.
prefix '/software/components/dcache';

'version' = '17.3.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
