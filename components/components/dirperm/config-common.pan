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
      # dirperm, 14.2.1, 1, 20140304-2345
      #

unique template components/dirperm/config-common;

include { 'components/dirperm/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/dirperm';

#'version' = '14.2.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
