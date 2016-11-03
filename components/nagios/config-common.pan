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
# nagios, 16.10.0-rc1, rc1_1, Thu Nov 03 2016
#

unique template components/nagios/config-common;

include { 'components/nagios/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/nagios';

#'version' = '16.10.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
