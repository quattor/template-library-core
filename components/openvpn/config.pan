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
      # openvpn, 14.10.0-rc3, rc3_1, 20141110-1446
      #

unique template components/openvpn/config;

include { 'components/openvpn/config-common' };
include { 'components/openvpn/config-rpm' };
