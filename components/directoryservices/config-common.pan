# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Nick Williams <Nick.Williams@morganstanley.com>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # directoryservices, 14.10.0-rc4, rc4_1, 20141112-1118
      #

unique template components/directoryservices/config-common;

include { 'components/directoryservices/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/directoryservices';

#'version' = '14.10.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
