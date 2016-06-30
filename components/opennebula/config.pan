# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Alvaro Simon Garcia <Alvaro.SimonGarcia@UGent.be>
#

# 
# #
# opennebula, 16.6.0-rc1, rc1_1, Thu Jun 30 2016
#

unique template components/opennebula/config;

include { 'components/opennebula/config-common' };
include { 'components/opennebula/config-rpm' };
include { 'components/opennebula/sudo' };
