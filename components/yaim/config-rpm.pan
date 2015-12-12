# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@yahoo.de>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# yaim, 15.12.0-rc1, rc1_1, 2015-12-12T17:24:51Z
#

unique template components/yaim/config-rpm;

include { 'components/yaim/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/yaim';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-yaim','15.12.0-rc1_1','noarch');
'dependencies/pre' ?= list('spma');

