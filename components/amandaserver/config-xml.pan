# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Laura del Caño Novales <laura.delcano@ft.uam.es>
#

# 
# #
# amandaserver, 14.12.0-rc4, rc4_1, 20150112-1343
#

unique template components/amandaserver/config-xml;

include { 'components/amandaserver/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/amandaserver';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/amandaserver/amandaserver.pm'); 
