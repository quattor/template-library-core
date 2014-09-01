# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@yahoo.de>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # yaim, 14.8.0-rc3, rc3_1, 20140901-1845
      #

unique template components/yaim/config-xml;

include { 'components/yaim/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/yaim';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/yaim/yaim.pm'); 
