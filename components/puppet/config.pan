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
# puppet, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/puppet/config;

include { 'components/puppet/config-common' };

include { 'components/puppet/config-rpm' };
