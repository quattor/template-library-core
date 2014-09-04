# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Fernando.Munoz.Mejias@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # fstab, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163507, 20140904-1735
      #

unique template components/fstab/config;

include { 'components/fstab/config-common' };
include { 'components/fstab/config-rpm' };
