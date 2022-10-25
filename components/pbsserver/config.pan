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


unique template components/pbsserver/config;

include 'components/pbsserver/schema';

bind '/software/components/pbsserver' = pbsserver_component;

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-pbsserver', '21.12.1-rc3_1', 'noarch');

# Set prefix to root of component configuration.
prefix '/software/components/pbsserver';

'version' = '21.12.1';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list('spma');
