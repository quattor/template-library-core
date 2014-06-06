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
      # ssh, 14.5.0-rc10, rc10_1, 20140606-1155
      #

unique template components/ssh/config-common;

include { 'components/ssh/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/ssh';

#'version' = '14.5.0-rc10';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
