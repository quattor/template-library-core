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
# ipmi, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/ipmi/config;

include { 'components/ipmi/config-common' };
include { 'components/ipmi/config-rpm' };
