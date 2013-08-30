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
      # altlogrotate, 13.1.1, 1, 20130830-1520
      #

unique template components/altlogrotate/config-xml;

include { 'components/altlogrotate/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/altlogrotate';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/altlogrotate/altlogrotate.pm'); 
