# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
#

# 
# #
# ssh, 15.2.0-rc6, rc6_1, 20150319-2029
#

unique template components/ssh/config;

include { 'components/ssh/config-common' };
include { 'components/ssh/config-rpm' };
