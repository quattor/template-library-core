# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
#

# 
# #
# syslog, 15.4.0-rc3, rc3_1, 2015-05-14T14:58:27Z
#

unique template components/syslog/config;

include { 'components/syslog/config-common' };
include { 'components/syslog/config-rpm' };
