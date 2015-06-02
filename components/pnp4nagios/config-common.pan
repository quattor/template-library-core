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
# pnp4nagios, 15.4.0-rc11, rc11_1, 2015-06-02T11:14:46Z
#

unique template components/pnp4nagios/config-common;

include { 'components/pnp4nagios/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/pnp4nagios';

#'version' = '15.4.0-rc11';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
