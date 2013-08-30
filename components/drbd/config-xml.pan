# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ronald Starink <ronalds@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # drbd, 13.6.0, 1, 20130830-1517
      #

unique template components/drbd/config-xml;

include { 'components/drbd/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/drbd';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/drbd/drbd.pm'); 
