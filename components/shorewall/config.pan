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
# shorewall, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/shorewall/config;

include { 'components/shorewall/config-common' };
include { 'components/shorewall/config-rpm' };
