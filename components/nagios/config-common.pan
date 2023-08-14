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
# nagios, 23.6.0, 1, Mon Aug 14 2023
#

unique template components/nagios/config-common;

include 'components/nagios/schema';

# Set prefix to root of component configuration.
prefix '/software/components/nagios';

#'version' = '23.6.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
