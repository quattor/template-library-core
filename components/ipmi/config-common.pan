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
# ipmi, 18.12.0-rc3, rc3_1, Wed Apr 10 2019
#

unique template components/ipmi/config-common;

include 'components/ipmi/schema';

# Set prefix to root of component configuration.
prefix '/software/components/ipmi';

#'version' = '18.12.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
