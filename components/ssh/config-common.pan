# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # ssh, 14.10.0-rc3, rc3_1, 20141110-1446
      #

unique template components/ssh/config-common;

include { 'components/ssh/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/ssh';

#'version' = '14.10.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
