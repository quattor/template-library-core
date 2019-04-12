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
# wmslb, 18.12.0-rc4, rc4_1, Fri Apr 12 2019
#

unique template components/wmslb/config-rpm;

include 'components/wmslb/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/wmslb';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-wmslb', '18.12.0-rc4_1', 'noarch');
'dependencies/pre' ?= list('spma');

