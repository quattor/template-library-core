# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


unique template components/maui/config;

include 'components/maui/schema';

bind '/software/components/maui' = maui_component;

# Set prefix to root of component configuration.
prefix '/software/components/maui';
'version' = '23.6.0';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list('spma');

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-maui', '23.6.0-rc3_1', 'noarch');
