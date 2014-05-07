# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ronald Starink <ronalds@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # drbd, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141724, 20140507-1516
      #

unique template components/drbd/config;

include { 'components/drbd/config-common' };
include { 'components/drbd/config-rpm' };
