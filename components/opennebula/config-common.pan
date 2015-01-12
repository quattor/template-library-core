# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Alvaro Simon Garcia <Alvaro.SimonGarcia@UGent.be>
#

# 
# #
# opennebula, 14.12.0-rc4, rc4_1, 20150112-1343
#

unique template components/opennebula/config-common;

include { 'components/opennebula/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/opennebula';

#'version' = '14.12.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
