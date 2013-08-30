# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # zephyrclt, 13.1.1, 1, 20130830-1520
      #

unique template components/zephyrclt/config-rpm;

include { 'components/zephyrclt/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/zephyrclt';

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-zephyrclt", "13.1.1-1", "noarch");

'dependencies/pre' ?= list('spma');

