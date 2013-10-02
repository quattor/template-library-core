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
      # xrootd, 13.1.1, 1, 20130718-1811
      #

unique template components/xrootd/config-rpm;

include { 'components/xrootd/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/xrootd';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-xrootd','13.1.1-1','noarch');
'dependencies/pre' ?= list('spma');

