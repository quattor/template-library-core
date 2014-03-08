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
      # slocate, 14.2.1, 1, 20140304-2350
      #

unique template components/slocate/config-rpm;

include { 'components/slocate/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/slocate';

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-slocate", "14.2.1-1", "noarch");

'dependencies/pre' ?= list('spma');

