# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Nick Williams <Nick.Williams@morganstanley.com>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # directoryservices, 14.5.0-rc10, rc10_1, 20140606-1155
      #

unique template components/directoryservices/config-xml;

include { 'components/directoryservices/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/directoryservices';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/directoryservices/directoryservices.pm'); 
