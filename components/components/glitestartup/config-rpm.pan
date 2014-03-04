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
      # glitestartup, 14.2.1, 1, 20140304-2353
      #

unique template components/glitestartup/config-rpm;

include { 'components/glitestartup/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/glitestartup';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-glitestartup','14.2.1-1','noarch');
'dependencies/pre' ?= list('spma');

