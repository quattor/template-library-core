# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#

# 
# #
# ofed, 14.12.0-rc4, rc4_1, 20150112-1343
#

unique template components/ofed/config;

include { 'components/ofed/config-common' };
include { 'components/ofed/config-rpm' };
