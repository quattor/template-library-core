#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

#
# Author(s): Luis Fernando Muñoz Mejías, Nick Williams, Loic Brarda
#


unique template components/sudo/config;

include 'components/sudo/schema';

bind '/software/components/sudo' = sudo_component;

'/software/packages' = pkg_repl('ncm-sudo', '24.10.0-rc2_1', 'noarch');

include if_exists('components/sudo/site-config');

prefix '/software/components/sudo';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '24.10.0';
"dependencies/pre" ?=  list("spma", "accounts");

include 'components/sudo/validation';
