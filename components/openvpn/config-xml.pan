# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tristan Suerink <tsuerink@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # openvpn, 14.8.0-rc4-SNAPSHOT, rc4_SNAPSHOT20140901174526, 20140901-1845
      #

unique template components/openvpn/config-xml;

include { 'components/openvpn/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/openvpn';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/openvpn/openvpn.pm'); 
