# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # networkupstools, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141726, 20140507-1516
      #

unique template components/networkupstools/config-xml;

include { 'components/networkupstools/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/networkupstools';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/networkupstools/networkupstools.pm'); 
