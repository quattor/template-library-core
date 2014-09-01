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
      # grub, 14.8.0-rc4-SNAPSHOT, rc4_SNAPSHOT20140901174520, 20140901-1845
      #

unique template components/grub/config;

include { 'components/grub/schema' };

# Package to install.
'/software/packages' = pkg_repl('ncm-grub', '14.8.0-rc4_SNAPSHOT20140901174520', 'noarch');

# Set prefix to root of component configuration.
prefix '/software/components/grub';

'version' = '14.8.0-rc4-SNAPSHOT';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' = append('spma');
# Do not register for changes to /system/kernel/version as it is optional
'register_change' = append('/system/kernel');

