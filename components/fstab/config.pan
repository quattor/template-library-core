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
      # fstab, 14.10.0-rc3, rc3_1, 20141110-1446
      #

unique template components/fstab/config;

include { 'components/fstab/config-common' };
include { 'components/fstab/config-rpm' };
