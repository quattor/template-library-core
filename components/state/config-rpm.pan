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
      # state, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141729, 20140507-1516
      #

unique template components/state/config-rpm;

include { 'components/state/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/state';

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-state", "14.4.0-rc3_SNAPSHOT20140507141729", "noarch");

'dependencies/pre' ?= list('spma');

