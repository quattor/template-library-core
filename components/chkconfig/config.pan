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
# chkconfig, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/chkconfig/config;

include { 'components/chkconfig/config-common' };
include { 'components/chkconfig/config-rpm' };
