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
# ipmi, 16.2.0, 1, 2016-02-19T15:57:52Z
#

unique template components/ipmi/config;

include { 'components/ipmi/config-common' };
include { 'components/ipmi/config-rpm' };
