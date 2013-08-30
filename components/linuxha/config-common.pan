# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Andras Horvath <Andras.Horvath@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # linuxha, 13.1.1, 1, 20130830-1520
      #

unique template components/linuxha/config-common;

include { 'components/linuxha/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/linuxha';

#'version' = '13.1.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
