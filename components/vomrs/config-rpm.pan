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
      # vomrs, 14.5.0-rc8, rc8_1, 20140605-1140
      #

unique template components/vomrs/config-rpm;

include { 'components/vomrs/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/vomrs';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-vomrs','14.5.0-rc8_1','noarch');
'dependencies/pre' ?= list('spma');

