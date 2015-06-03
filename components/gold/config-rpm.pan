# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# gold, 15.4.0-rc15, rc15_1, 2015-06-03T13:20:04Z
#

unique template components/gold/config-rpm;

include { 'components/gold/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/gold';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-gold','15.4.0-rc15_1','noarch');
'dependencies/pre' ?= list('spma');

