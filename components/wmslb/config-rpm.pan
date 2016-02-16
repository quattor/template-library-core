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
# wmslb, 16.2.0-rc1, rc1_1, 2016-02-16T12:49:17Z
#

unique template components/wmslb/config-rpm;

include { 'components/wmslb/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/wmslb';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-wmslb','16.2.0-rc1_1','noarch');
'dependencies/pre' ?= list('spma');

