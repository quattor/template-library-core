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
# pnp4nagios, 15.4.0-rc3, rc3_1, 2015-05-14T14:58:27Z
#

unique template components/pnp4nagios/config-xml;

include { 'components/pnp4nagios/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/pnp4nagios';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/pnp4nagios/pnp4nagios.pm'); 
