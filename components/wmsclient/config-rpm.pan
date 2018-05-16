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
# wmsclient, 18.3.0-rc4, rc4_1, Wed May 16 2018
#

unique template components/wmsclient/config-rpm;

include 'components/wmsclient/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/wmsclient';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-wmsclient', '18.3.0-rc4_1', 'noarch');
'dependencies/pre' ?= list('spma');

