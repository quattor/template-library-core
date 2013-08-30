# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan/iven@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # selinux, 13.6.0, 1, 20130830-1517
      #

unique template components/selinux/config-rpm;

include { 'components/selinux/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/selinux';

# Install Quattor configuration module via RPM package.
"/software/packages" = pkg_repl("ncm-selinux", "13.6.0-1", "noarch");

'dependencies/pre' ?= list('spma');

