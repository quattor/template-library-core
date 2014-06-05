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
      # nsca, 14.5.0-rc9, rc9_1, 20140605-1524
      #

unique template components/nsca/config-xml;

include { 'components/nsca/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/nsca';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/nsca/nsca.pm'); 
