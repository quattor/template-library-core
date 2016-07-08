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
# shorewall, 16.6.0-rc3, rc3_1, Fri Jul 08 2016
#

unique template components/shorewall/config;

include { 'components/shorewall/config-common' };
include { 'components/shorewall/config-rpm' };
