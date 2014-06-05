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
      # nfs, 14.5.0-rc9, rc9_1, 20140605-1524
      #

unique template components/nfs/config;

include { 'components/nfs/config-common' };
include { 'components/nfs/config-rpm' };
