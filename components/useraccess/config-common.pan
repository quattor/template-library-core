# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 
# #
# useraccess, 15.12.0-rc1, rc1_1, 2015-12-12T17:19:33Z
#

unique template components/useraccess/config-common;

include { 'components/useraccess/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/useraccess';

#'version' = '15.12.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
