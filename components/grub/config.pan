# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stephen Childs <Stephen.Childs@cs.tcd.ie>
#

# #
# Author(s): German Cancio
#

# #
# grub, 17.2.0, 1, Fri Mar 03 2017
#

unique template components/grub/config;

include 'components/grub/schema';

bind "/software/components/grub" = component_grub_type;

# Package to install.
'/software/packages' = pkg_repl('ncm-grub', '17.2.0-1', 'noarch');

# Set prefix to root of component configuration.
prefix '/software/components/grub';

'version' = '17.2.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' = append('spma');
# Do not register for changes to /system/kernel/version as it is optional
'register_change' = append('/system/kernel');
