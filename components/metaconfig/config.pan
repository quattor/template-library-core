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
# Author(s): Luis Fernando Muñoz Mejías
#


unique template components/metaconfig/config;

include 'components/metaconfig/schema';

bind '/software/components/metaconfig' = metaconfig_component;

'/software/packages' = pkg_repl('ncm-metaconfig', '21.12.1-rc3_1', 'noarch');

include if_exists('components/metaconfig/site-config');

prefix '/software/components/metaconfig';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.12.1';
'dependencies/pre' ?= list('spma');
