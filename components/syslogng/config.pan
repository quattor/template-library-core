# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# 
# #
# syslogng, 15.2.0-rc5, rc5_1, 20150319-1200
#

unique template components/syslogng/config;

include { 'components/syslogng/config-common' };
include { 'components/syslogng/config-rpm' };
