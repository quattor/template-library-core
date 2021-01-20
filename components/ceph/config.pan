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
# ceph, 20.12.0, 1, Wed Jan 20 2021
#

unique template components/ceph/config;

variable CEPH_SCHEMA_VERSION ?= 'v1';

include if_exists('components/ceph/site-config');
include format('components/ceph/%s/schema', CEPH_SCHEMA_VERSION);

prefix '/software/components/ceph';

'version' = '20.12.0';
'active' ?= true;
'dispatch' ?= true;

'/software/packages' = pkg_repl('ncm-ceph', '20.12.0-1', 'noarch');
'dependencies/pre' ?= list('spma', 'accounts', 'sudo', 'useraccess');

bind '/software/components/ceph' = ceph_component;
