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
      # pbsserver, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141756, 20140507-1517
      #

unique template components/pbsserver/config-common;

include { 'components/pbsserver/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/pbsserver';

'version' = '14.4.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
