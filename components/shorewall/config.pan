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
# shorewall, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/shorewall/config;

include { 'components/shorewall/config-common' };
include { 'components/shorewall/config-rpm' };
