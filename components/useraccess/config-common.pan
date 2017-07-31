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
# useraccess, 17.7.0-rc1, rc1_1, Mon Jul 31 2017
#

unique template components/useraccess/config-common;

include 'components/useraccess/schema';

# Set prefix to root of component configuration.
prefix '/software/components/useraccess';

#'version' = '17.7.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
