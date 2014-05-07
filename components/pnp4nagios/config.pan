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
      # pnp4nagios, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141711, 20140507-1516
      #

unique template components/pnp4nagios/config;

include { 'components/pnp4nagios/config-common' };
include { 'components/pnp4nagios/config-rpm' };
