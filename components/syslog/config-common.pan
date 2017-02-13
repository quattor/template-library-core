# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
#

# 
# #
# syslog, 16.12.0, 1, Wed Jan 04 2017
#

unique template components/syslog/config-common;

include 'components/syslog/schema';

# Set prefix to root of component configuration.
prefix '/software/components/syslog';

#'version' = '16.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
