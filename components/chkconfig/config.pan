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
# chkconfig, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/chkconfig/config;

include { 'components/chkconfig/config-common' };
include { 'components/chkconfig/config-rpm' };
