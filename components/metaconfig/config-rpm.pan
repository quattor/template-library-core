# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Luis Fernando Muñoz Mejías
#

# #
      # metaconfig, 13.1.2, 1, 20131015-1106
      #

unique template components/metaconfig/config-rpm;

include { 'components/metaconfig/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/metaconfig';

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-metaconfig", "13.1.2-1", "noarch");

'dependencies/pre' ?= list('spma');

