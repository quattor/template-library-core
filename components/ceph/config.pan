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
# ceph, 23.9.0-rc1, rc1_1, Fri Oct 06 2023
#

unique template components/ceph/config;

variable CEPH_SCHEMA_VERSION ?= 'v2';

include if_exists('components/ceph/site-config');
include format('components/ceph/%s/schema', CEPH_SCHEMA_VERSION);

prefix '/software/components/ceph';

'version' = '23.9.0';
'active' ?= true;
'dispatch' ?= true;

'/software/packages' = pkg_repl('ncm-ceph', '23.9.0-rc1_1', 'noarch');
'dependencies/pre' ?= list('spma', 'accounts', 'sudo', 'useraccess');

bind '/software/components/ceph' = ceph_component;
