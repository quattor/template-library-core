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
      # vomrs, 13.1.1, 1, 20130718-1811
      #

unique template components/vomrs/config-rpm;

include { 'components/vomrs/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/vomrs';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-vomrs','13.1.1-1','noarch');
'dependencies/pre' ?= list('spma');

