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
      # nagios, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163503, 20140904-1735
      #

unique template components/nagios/config-xml;

include { 'components/nagios/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/nagios';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/nagios/nagios.pm'); 
