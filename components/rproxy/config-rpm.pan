# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Marco Emilio Poleggi <Marco.Poleggi@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # rproxy, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141728, 20140507-1516
      #

unique template components/rproxy/config-rpm;

include { 'components/rproxy/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/rproxy';

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-rproxy", "14.4.0-rc3_SNAPSHOT20140507141728", "noarch");

'dependencies/pre' ?= list('spma');

