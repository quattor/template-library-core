# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Benjamin Chardi <Benjamin.Chardi.Marco@cern.ch>
#

# 
# #
# sysctl, 15.2.0-rc4, rc4_1, 20150317-1257
#

unique template components/sysctl/config;

include { 'components/sysctl/config-common' };
include { 'components/sysctl/config-rpm' };
