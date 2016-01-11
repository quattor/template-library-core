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
# nagios, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/nagios/config;

include { 'components/nagios/config-common' };
include { 'components/nagios/config-rpm' };
