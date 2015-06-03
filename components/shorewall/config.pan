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
# shorewall, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/shorewall/config;

include { 'components/shorewall/config-common' };
include { 'components/shorewall/config-rpm' };
