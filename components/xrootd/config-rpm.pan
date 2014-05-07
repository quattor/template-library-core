# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # xrootd, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141758, 20140507-1517
      #

unique template components/xrootd/config-rpm;

include { 'components/xrootd/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/xrootd';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-xrootd','14.4.0-rc3_SNAPSHOT20140507141758','noarch');
'dependencies/pre' ?= list('spma');

