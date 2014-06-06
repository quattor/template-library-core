# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Juan Pelegrin <Juan.Pelegrin@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # etcservices, 14.5.0-rc11, rc11_1, 20140606-1524
      #

unique template components/etcservices/config-xml;

include { 'components/etcservices/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/etcservices';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/etcservices/etcservices.pm'); 
