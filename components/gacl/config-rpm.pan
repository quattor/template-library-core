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
# gacl, 19.12.0-rc2, rc2_1, Tue Jan 21 2020
#

unique template components/gacl/config-rpm;

include 'components/gacl/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/gacl';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-gacl', '19.12.0-rc2_1', 'noarch');
'dependencies/pre' ?= list('spma');

