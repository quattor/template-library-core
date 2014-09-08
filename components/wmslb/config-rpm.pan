# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Quattor Project
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jerome Pansanel
#

# #
      # wmslb, 14.8.0, 1, 20140908-1650
      #

unique template components/wmslb/config-rpm;

include { 'components/wmslb/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/wmslb';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-wmslb','14.8.0-1','noarch');
'dependencies/pre' ?= list('spma');

