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
# glitestartup, 19.12.0, 1, Thu Feb 13 2020
#

unique template components/glitestartup/config-rpm;

include 'components/glitestartup/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/glitestartup';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-glitestartup', '19.12.0-1', 'noarch');
'dependencies/pre' ?= list('spma');

