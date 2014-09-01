# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Laura del Cano Novales <laura.delcano@uam.es>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # pnp4nagios, 14.8.0-rc4-SNAPSHOT, rc4_SNAPSHOT20140901174520, 20140901-1845
      #

unique template components/pnp4nagios/config;

include { 'components/pnp4nagios/config-common' };
include { 'components/pnp4nagios/config-rpm' };
