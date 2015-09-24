# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Joao Martins <alasdair.earl@cern.ch>
#

# 
# #
# iptables, 15.8.0-rc1, rc1_1, 2015-09-24T15:01:42Z
#

unique template components/iptables/config;

include { 'components/iptables/config-common' };
include { 'components/iptables/config-rpm' };
