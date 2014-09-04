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
      # hostsaccess, 14.8.0-rc4, rc4_1, 20140904-1839
      #

unique template components/hostsaccess/config-xml;

include { 'components/hostsaccess/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/hostsaccess';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/hostsaccess/hostsaccess.pm'); 
