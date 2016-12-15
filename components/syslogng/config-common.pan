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
# syslogng, 16.12.0-rc2, rc2_1, Thu Dec 15 2016
#

unique template components/syslogng/config-common;

include 'components/syslogng/schema';

# Set prefix to root of component configuration.
prefix '/software/components/syslogng';

#'version' = '16.12.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
