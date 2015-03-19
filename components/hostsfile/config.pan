# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# 
# #
# hostsfile, 15.2.0-rc6, rc6_1, 20150319-2029
#

unique template components/hostsfile/config;

include { 'components/hostsfile/config-common' };
include { 'components/hostsfile/config-rpm' };
