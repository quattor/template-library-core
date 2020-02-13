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
# ceph, 19.12.0, 1, Thu Feb 13 2020
#

unique template components/ceph/config;

variable CEPH_SCHEMA_VERSION ?= 'v1';

include if_exists('components/ceph/site-config');
include format('components/ceph/%s/schema', CEPH_SCHEMA_VERSION);

prefix '/software/components/ceph';

'version' = '19.12.0';
'active' ?= true;
'dispatch' ?= true;

'/software/packages' = pkg_repl('ncm-ceph', '19.12.0-1', 'noarch');
'dependencies/pre' ?= list('spma', 'accounts', 'sudo', 'useraccess');

bind '/software/components/ceph' = ceph_component;
