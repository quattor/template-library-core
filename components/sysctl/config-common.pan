# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Benjamin Chardi <Benjamin.Chardi.Marco@cern.ch>
#

# 
# #
# sysctl, 14.10.1-SNAPSHOT, SNAPSHOT20150305103438, 20150305-1034
#

unique template components/sysctl/config-common;

include { 'components/sysctl/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/sysctl';

#'version' = '14.10.1-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
