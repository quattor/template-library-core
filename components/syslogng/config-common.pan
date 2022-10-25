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
# syslogng, 21.12.1-rc3, rc3_1, Tue Oct 25 2022
#

unique template components/syslogng/config-common;

include 'components/syslogng/schema';

# Set prefix to root of component configuration.
prefix '/software/components/syslogng';

#'version' = '21.12.1-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
