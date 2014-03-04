# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # zephyrclt, 14.2.1, 1, 20140304-2352
      #

unique template components/zephyrclt/config-common;

include { 'components/zephyrclt/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/zephyrclt';

#'version' = '14.2.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
