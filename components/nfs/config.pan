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
      # nfs, 14.10.0-rc3, rc3_1, 20141110-1446
      #

unique template components/nfs/config;

include { 'components/nfs/config-common' };
include { 'components/nfs/config-rpm' };
