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
# grub, 14.10.1-SNAPSHOT, SNAPSHOT20150305103430, 20150305-1034
#

unique template components/grub/config;

include { 'components/grub/schema' };

# Package to install.
'/software/packages' = pkg_repl('ncm-grub', '14.10.1-SNAPSHOT20150305103430', 'noarch');

# Set prefix to root of component configuration.
prefix '/software/components/grub';

'version' = '14.10.1';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' = append('spma');
# Do not register for changes to /system/kernel/version as it is optional
'register_change' = append('/system/kernel');

