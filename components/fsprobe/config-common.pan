# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# 
# #
# fsprobe, 14.12.0-rc4, rc4_1, 20150112-1343
#

unique template components/fsprobe/config-common;

include { 'components/fsprobe/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/fsprobe';

#'version' = '14.12.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
