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
      # filecopy, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163505, 20140904-1735
      #

unique template components/filecopy/config-common;

include { 'components/filecopy/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/filecopy';

#'version' = '14.8.0-rc5-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
