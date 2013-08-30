# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # ldconf, 13.6.0, 1, 20130830-1517
      #

unique template components/ldconf/config-xml;

include { 'components/ldconf/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ldconf';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/ldconf/ldconf.pm'); 
