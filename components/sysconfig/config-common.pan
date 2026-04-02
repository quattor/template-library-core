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
# sysconfig, 26.2.0, 1, Thu Apr 02 2026
#

unique template components/sysconfig/config-common;

include 'components/sysconfig/schema';

# Set prefix to root of component configuration.
prefix '/software/components/sysconfig';

#'version' = '26.2.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
