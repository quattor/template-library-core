# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Hugo Cacote <Hugo.Cacote@cern.ch>
#

# 
# #
# modprobe, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/modprobe/config;

include { 'components/modprobe/config-common' };
include { 'components/modprobe/config-rpm' };
