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
      # yaim, 13.1.1, 1, 20130718-1811
      #

unique template components/yaim/config-rpm;

include { 'components/yaim/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/yaim';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-yaim','13.1.1-1','noarch');
'dependencies/pre' ?= list('spma');

