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
# modprobe, 15.2.0-rc6, rc6_1, 20150319-2029
#

unique template components/modprobe/config;

include { 'components/modprobe/config-common' };
include { 'components/modprobe/config-rpm' };
