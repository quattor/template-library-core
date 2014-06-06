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
      # altlogrotate, 14.5.0-rc11, rc11_1, 20140606-1524
      #

unique template components/altlogrotate/config-common;

include { 'components/altlogrotate/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/altlogrotate';

#'version' = '14.5.0-rc11';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
