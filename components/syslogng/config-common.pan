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
# syslogng, 18.12.0-rc0, rc0_1, Thu Dec 13 2018
#

unique template components/syslogng/config-common;

include 'components/syslogng/schema';

# Set prefix to root of component configuration.
prefix '/software/components/syslogng';

#'version' = '18.12.0-rc0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
