# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# 
# #
# cups, 17.2.0-rc1, rc1_1, Mon Feb 27 2017
#

unique template components/cups/config-common;

include 'components/cups/schema';

# Set prefix to root of component configuration.
prefix '/software/components/cups';

'version' = '17.2.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
