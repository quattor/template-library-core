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
# syslogng, 16.8.0-rc1, rc1_1, Tue Sep 06 2016
#

unique template components/syslogng/config-common;

include { 'components/syslogng/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/syslogng';

#'version' = '16.8.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
