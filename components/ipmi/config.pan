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
# ipmi, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/ipmi/config;

include { 'components/ipmi/config-common' };
include { 'components/ipmi/config-rpm' };
