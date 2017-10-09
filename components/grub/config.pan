#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Stephen Childs <Stephen.Childs@cs.tcd.ie>
#

#
# Author(s): German Cancio
#


unique template components/grub/config;

include 'components/grub/schema';

bind '/software/components/grub' = grub_component;

'/software/packages' = pkg_repl('ncm-grub', '17.8.0-rc3_1', 'noarch');

include if_exists('components/grub/site-config.pan');

prefix '/software/components/grub';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '17.8.0';
'dependencies/pre' ?= list('spma');

# Do not register for changes to /system/kernel/version as it is optional
'register_change' = append('/system/kernel');
