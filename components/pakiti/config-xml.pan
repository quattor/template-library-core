# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Christos Triantafyllidis <ctria@grid.auth.gr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # pakiti, 13.1.1, 1, 20130830-1520
      #

unique template components/pakiti/config-xml;

include { 'components/pakiti/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/pakiti';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/pakiti/pakiti.pm'); 
