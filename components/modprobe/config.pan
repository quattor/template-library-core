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
# modprobe, 15.4.0-rc3, rc3_1, 2015-05-14T14:58:27Z
#

unique template components/modprobe/config;

include { 'components/modprobe/config-common' };
include { 'components/modprobe/config-rpm' };
