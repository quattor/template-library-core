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
# syslogng, 24.10.0-rc2, rc2_1, Wed Nov 06 2024
#

unique template components/syslogng/config-common;

include 'components/syslogng/schema';

# Set prefix to root of component configuration.
prefix '/software/components/syslogng';

#'version' = '24.10.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
