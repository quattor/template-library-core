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
# gpfs, 14.10.1-SNAPSHOT, SNAPSHOT20150305103434, 20150305-1034
#

unique template components/gpfs/config;

include { 'components/gpfs/config-common' };
include { 'components/gpfs/config-rpm' };
