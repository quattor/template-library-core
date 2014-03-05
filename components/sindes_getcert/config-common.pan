# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <Stijn.De.Weirdt@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # sindes_getcert, 13.1.2, 1, 20131015-1106
      #

unique template components/sindes_getcert/config-common;

include { 'components/sindes_getcert/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/sindes_getcert';

#'version' = '13.1.2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
