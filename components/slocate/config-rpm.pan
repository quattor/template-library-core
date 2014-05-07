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
      # slocate, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141711, 20140507-1516
      #

unique template components/slocate/config-rpm;

include { 'components/slocate/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/slocate';

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-slocate", "14.4.0-rc3_SNAPSHOT20140507141711", "noarch");

'dependencies/pre' ?= list('spma');

