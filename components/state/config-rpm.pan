# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   German Cancio <German.Cancio@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # state, 13.12.0, 1, 20131210-1548
      #

unique template components/state/config-rpm;

include { 'components/state/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/state';

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-state", "13.12.0-1", "noarch");

'dependencies/pre' ?= list('spma');

