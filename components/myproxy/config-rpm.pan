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

# #
# myproxy, 15.4.0-rc14, rc14_1, 2015-06-03T12:08:17Z
#

unique template components/myproxy/config-rpm;

include { 'components/myproxy/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/myproxy';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-myproxy','15.4.0-rc14_1','noarch');
'dependencies/pre' ?= list('spma');

