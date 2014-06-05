# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Laura del Caño Novales <laura.delcano@ft.uam.es>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # amandaserver, 14.5.0-rc9, rc9_1, 20140605-1524
      #

unique template components/amandaserver/config-xml;

include { 'components/amandaserver/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/amandaserver';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/amandaserver/amandaserver.pm'); 
