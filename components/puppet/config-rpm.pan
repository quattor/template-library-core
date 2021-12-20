# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Andrea Sartirana <sartiran@llr.in2p3.fr>
#

# 
# #
# puppet, 21.12.0-rc1, rc1_1, Mon Dec 20 2021
#

unique template components/puppet/config-rpm;

# Set prefix to root of component configuration.
prefix '/software/components/puppet';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-puppet','21.12.0-rc1_1','noarch');
'dependencies/pre' ?= list('spma');

