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
# nagios, 15.4.0-rc4, rc4_1, 2015-05-27T12:42:00Z
#

unique template components/nagios/config;

include { 'components/nagios/config-common' };
include { 'components/nagios/config-rpm' };
