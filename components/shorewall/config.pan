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
# shorewall, 16.10.0-rc4, rc4_1, Thu Nov 24 2016
#

unique template components/shorewall/config;

include { 'components/shorewall/config-common' };
include { 'components/shorewall/config-rpm' };
