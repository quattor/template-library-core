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
# ipmi, 15.8.0, 1, 2015-10-29T11:33:30Z
#

unique template components/ipmi/config-common;

include { 'components/ipmi/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/ipmi';

#'version' = '15.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
