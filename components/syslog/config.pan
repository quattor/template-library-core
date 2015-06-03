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
# syslog, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/syslog/config;

include { 'components/syslog/config-common' };
include { 'components/syslog/config-rpm' };
