# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Luis Fernando Muñoz Mejías
#

# #
# metaconfig, 16.6.0-rc3, rc3_1, Fri Jul 08 2016
#

unique template components/metaconfig/config;

include 'components/metaconfig/schema';

bind '/software/components/metaconfig' = metaconfig_component;

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-metaconfig", "16.6.0-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/metaconfig';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list('spma');
'version' = '16.6.0';
