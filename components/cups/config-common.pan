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
# cups, 16.12.0, 1, Wed Jan 04 2017
#

unique template components/cups/config-common;

include 'components/cups/schema';

# Set prefix to root of component configuration.
prefix '/software/components/cups';

'version' = '16.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
