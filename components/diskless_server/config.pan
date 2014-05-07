# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Vasilis Christaras <Vasileios.Christaras@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # diskless_server, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141720, 20140507-1516
      #

unique template components/diskless_server/config;

include { 'components/diskless_server/config-common' };
include { 'components/diskless_server/config-rpm' };
