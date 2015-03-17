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
# nagios, 15.2.0-rc4, rc4_1, 20150317-1257
#

unique template components/nagios/config-common;

include { 'components/nagios/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/nagios';

#'version' = '15.2.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
