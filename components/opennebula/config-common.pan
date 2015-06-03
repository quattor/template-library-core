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
# opennebula, 15.4.0-rc13, rc13_1, 2015-06-03T10:01:23Z
#

unique template components/opennebula/config-common;

include { 'components/opennebula/schema' };

bind '/software/components/opennebula' = component_opennebula;


# Set prefix to root of component configuration.
prefix '/software/components/opennebula';

#'version' = '15.4.0-rc13';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
