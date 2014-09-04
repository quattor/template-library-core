# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <loomis@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # sysconfig, 14.8.0-rc4, rc4_1, 20140904-1839
      #

unique template components/sysconfig/config-common;

include { 'components/sysconfig/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/sysconfig';

#'version' = '14.8.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
