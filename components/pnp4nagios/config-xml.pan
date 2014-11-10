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
      # pnp4nagios, 14.10.0-rc3, rc3_1, 20141110-1446
      #

unique template components/pnp4nagios/config-xml;

include { 'components/pnp4nagios/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/pnp4nagios';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/pnp4nagios/pnp4nagios.pm'); 
