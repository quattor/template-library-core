# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Laura del Cano Novales <laura.delcano@uam.es>
#

# 
# #
# pnp4nagios, 16.10.0, 1, Mon Nov 28 2016
#

unique template components/pnp4nagios/config;

include { 'components/pnp4nagios/config-common' };
include { 'components/pnp4nagios/config-rpm' };
