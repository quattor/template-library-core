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
# opennebula, 15.8.0-rc2, rc2_1, 2015-09-24T16:21:27Z
#

unique template components/opennebula/config-common;

include { 'components/opennebula/schema' };

bind '/software/components/opennebula' = component_opennebula;


# Set prefix to root of component configuration.
prefix '/software/components/opennebula';

#'version' = '15.8.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
