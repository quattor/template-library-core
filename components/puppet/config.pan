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
# puppet, 21.12.1, 1, Tue Oct 25 2022
#

unique template components/puppet/config;

include 'components/puppet/config-common';

include 'components/puppet/config-rpm';
