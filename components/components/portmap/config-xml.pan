# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # portmap, 14.2.1, 1, 20140304-2349
      #

unique template components/portmap/config-xml;

include { 'components/portmap/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/portmap';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/portmap/portmap.pm'); 
