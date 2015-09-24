# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume PHILIPPON <philippo@lal.in2p3.fr>
#

# 
# #
# ipmi, 15.8.0-rc1, rc1_1, 2015-09-24T15:01:42Z
#

unique template components/ipmi/config;

include { 'components/ipmi/config-common' };
include { 'components/ipmi/config-rpm' };
