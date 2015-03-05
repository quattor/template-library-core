# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#

# 
# #
# autofs, 14.10.1-SNAPSHOT, SNAPSHOT20150305103435, 20150305-1034
#

unique template components/autofs/config-common;

include { 'components/autofs/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/autofs';

#'version' = '14.10.1-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
