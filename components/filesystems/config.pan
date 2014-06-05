# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # filesystems, 14.5.0-rc8, rc8_1, 20140605-1139
      #

unique template components/filesystems/config;

include { 'components/filesystems/config-common' };
include { 'components/filesystems/config-rpm' };
