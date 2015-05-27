# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume PHILIPPON <philippo@lal.in2p3.fr>
#

# 
# #
# ipmi, 15.4.0-rc4, rc4_1, 2015-05-27T12:42:00Z
#

unique template components/ipmi/config-common;

include { 'components/ipmi/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/ipmi';

#'version' = '15.4.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
