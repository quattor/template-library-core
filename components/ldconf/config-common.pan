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
      # ldconf, 13.1.2, 1, 20131015-1106
      #

unique template components/ldconf/config-common;

include { 'components/ldconf/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/ldconf';

#'version' = '13.1.2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
