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
      # lcgmonjob, 14.10.0-rc4, rc4_1, 20141112-1118
      #

unique template components/lcgmonjob/config-common;

include { 'components/lcgmonjob/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/lcgmonjob';

'version' = '14.10.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
