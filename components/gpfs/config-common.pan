# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#

# 
# #
# gpfs, 14.12.0-rc3, rc3_1, 20150112-1043
#

unique template components/gpfs/config-common;

include { 'components/gpfs/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/gpfs';

#'version' = '14.12.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
