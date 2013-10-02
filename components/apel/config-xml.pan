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
      # apel, 13.1.1, 1, 20130718-1811
      #

unique template components/apel/config-xml;

include { 'components/apel/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/apel';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/apel/apel.pm'); 
