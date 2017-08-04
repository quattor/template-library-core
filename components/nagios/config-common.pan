# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# 
# #
# nagios, 17.7.0-rc2, rc2_1, Fri Aug 04 2017
#

unique template components/nagios/config-common;

include 'components/nagios/schema';

# Set prefix to root of component configuration.
prefix '/software/components/nagios';

#'version' = '17.7.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
