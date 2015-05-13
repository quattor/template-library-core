# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tristan Suerink <tsuerink@nikhef.nl>
#

# 
# #
# openvpn, 15.4.0-rc2, rc2_1, 20150513-1258
#

unique template components/openvpn/config-common;

include { 'components/openvpn/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/openvpn';

#'version' = '15.4.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
