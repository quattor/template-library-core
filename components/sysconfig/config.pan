# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <loomis@lal.in2p3.fr>
#

# 
# #
# sysconfig, 15.2.0-rc4, rc4_1, 20150317-1257
#

unique template components/sysconfig/config;

include { 'components/sysconfig/config-common' };
include { 'components/sysconfig/config-rpm' };
