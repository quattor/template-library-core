# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Steve Traylen <steve.traylen@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # vomrs, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141757, 20140507-1517
      #

unique template components/vomrs/config-rpm;

include { 'components/vomrs/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/vomrs';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-vomrs','14.4.0-rc3_SNAPSHOT20140507141757','noarch');
'dependencies/pre' ?= list('spma');

