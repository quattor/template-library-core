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
# grub, 16.6.0-rc6, rc6_1, Tue Jul 26 2016
#

unique template components/grub/config;

include { 'components/grub/schema' };

# Package to install.
'/software/packages' = pkg_repl('ncm-grub', '16.6.0-rc6_1', 'noarch');

# Set prefix to root of component configuration.
prefix '/software/components/grub';

'version' = '16.6.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' = append('spma');
# Do not register for changes to /system/kernel/version as it is optional
'register_change' = append('/system/kernel');

