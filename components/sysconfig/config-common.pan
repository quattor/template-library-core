# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <loomis@lal.in2p3.fr>
#

# 
# #
# sysconfig, 24.10.0, 1, Fri Nov 22 2024
#

unique template components/sysconfig/config-common;

include 'components/sysconfig/schema';

# Set prefix to root of component configuration.
prefix '/software/components/sysconfig';

#'version' = '24.10.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
