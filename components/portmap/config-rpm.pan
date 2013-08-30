# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # portmap, 13.6.0, 1, 20130830-1517
      #

unique template components/portmap/config-rpm;

include { 'components/portmap/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/portmap';

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-portmap", "13.6.0-1", "noarch");

'dependencies/pre' ?= list('spma');

