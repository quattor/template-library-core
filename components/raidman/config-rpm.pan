# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # raidman, 13.1.1, 1, 20130830-1520
      #

unique template components/raidman/config-rpm;

include { 'components/raidman/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/raidman';

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-raidman", "13.1.1-1", "noarch");

'dependencies/pre' ?= list('spma');

