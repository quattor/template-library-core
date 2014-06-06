# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles LOOMIS <loomis@lal.in2p3.fr>
#

# #
# Author(s): German Cancio
#

# #
      # grub, 14.5.0-rc10, rc10_1, 20140606-1155
      #

unique template components/grub/config;

include { 'components/grub/config-common' };
include { 'components/grub/config-rpm' };
