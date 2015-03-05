# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Hugo Cacote <Hugo.Cacote@cern.ch>
#

# 
# #
# modprobe, 14.10.1-SNAPSHOT, SNAPSHOT20150305103437, 20150305-1034
#

unique template components/modprobe/config-common;

include { 'components/modprobe/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/modprobe';

#'version' = '14.10.1-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
