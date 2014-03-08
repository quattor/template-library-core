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
      # rproxy, 14.2.1, 1, 20140304-2350
      #

unique template components/rproxy/config-rpm;

include { 'components/rproxy/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/rproxy';

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-rproxy", "14.2.1-1", "noarch");

'dependencies/pre' ?= list('spma');

