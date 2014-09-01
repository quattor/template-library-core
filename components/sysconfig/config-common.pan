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
      # sysconfig, 14.8.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140901141108, 20140901-1511
      #

unique template components/sysconfig/config-common;

include { 'components/sysconfig/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/sysconfig';

#'version' = '14.8.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
