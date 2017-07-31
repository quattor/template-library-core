# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Kenneth Waegeman <Kenneth.Waegeman@UGent.be>
#

# 
# #
# ceph, 17.7.0-rc1, rc1_1, Mon Jul 31 2017
#

unique template components/ceph/config-common;

include 'components/ceph/schema';

# Set prefix to root of component configuration.
prefix '/software/components/ceph';

'version' = '17.7.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
