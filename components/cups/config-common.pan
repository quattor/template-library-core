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
# cups, 15.12.0-rc1, rc1_1, 2015-12-12T17:19:33Z
#

unique template components/cups/config-common;

include { 'components/cups/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/cups';

'version' = '15.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
