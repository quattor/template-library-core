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
# puppet, 24.10.0-rc3, rc3_1, Wed Nov 06 2024
#

unique template components/puppet/config;

include 'components/puppet/config-common';

include 'components/puppet/config-rpm';
