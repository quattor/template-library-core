# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# 
# #
# hostsaccess, 16.6.0-rc4, rc4_1, Fri Jul 15 2016
#

unique template components/hostsaccess/config;

include { 'components/hostsaccess/config-common' };
include { 'components/hostsaccess/config-rpm' };
