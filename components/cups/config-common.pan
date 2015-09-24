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
# cups, 15.8.0-rc3, rc3_1, 2015-09-24T16:59:54Z
#

unique template components/cups/config-common;

include { 'components/cups/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/cups';

'version' = '15.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
