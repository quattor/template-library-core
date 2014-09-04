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
      # mcx, 14.8.0-rc4, rc4_1, 20140904-1839
      #

unique template components/mcx/config-xml;

include { 'components/mcx/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/mcx';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/mcx/mcx.pm'); 
