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
# fsprobe, 15.2.0-rc5, rc5_1, 20150319-1200
#

unique template components/fsprobe/config-common;

include { 'components/fsprobe/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/fsprobe';

#'version' = '15.2.0-rc5';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
