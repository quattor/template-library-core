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
      # filecopy, 13.1.1, 1, 20130830-1520
      #

unique template components/filecopy/config-common;

include { 'components/filecopy/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/filecopy';

#'version' = '13.1.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
