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

declaration template components/ceph/v2/schema;

include 'quattor/schema';

@documentation{ type for a generic ceph daemon }
type ceph_daemon = {
};

include 'components/ceph/v2/schema-mon';
include 'components/ceph/v2/schema-osd';
include 'components/ceph/v2/schema-mds';
include 'components/ceph/v2/schema-rgw';

@documentation{
ceph cluster-wide config parameters
generate an fsid with uuidgen
 }
type ceph_global_config = {
    'auth_client_required' : choice('cephx', 'none') = 'cephx'
    'auth_cluster_required' : choice('cephx', 'none') = 'cephx'
    'auth_service_required' : choice('cephx', 'none') = 'cephx'
    'cluster_network' ? type_network_name
    'enable_experimental_unrecoverable_data_corrupting_features' ? string[1..]
    'filestore_xattr_use_omap' ? boolean
    'fsid' : type_uuid
    'mon_cluster_log_to_syslog' : boolean = true
    'mon_initial_members' : type_network_name[1..]
    'mon_host' : type_fqdn[1..]
    'mon_max_pg_per_osd' ? long
    'mon_osd_min_down_reporters' ? long(0..)
    'mon_osd_min_down_reports' ? long(0..)
    'mon_osd_warn_op_age' ? long = 32
    'mon_osd_err_op_age_ratio' ? long = 128
    'ms_type' ? choice('simple', 'async', 'xio')
    'op_queue' ? choice('prio', 'wpq')
    'osd_journal_size' : long(0..) = 10240
    'osd_max_pg_per_osd_hard_ratio' ? long
    'osd_pool_default_min_size' : long(0..) = 2
    'osd_pool_default_pg_num' ? long(0..)
    'osd_pool_default_pgp_num' ? long(0..)
    'osd_pool_default_size' : long(0..) = 3
    'public_network' : type_network_name
};

type ceph_configfile = {
    'global' : ceph_global_config
    'mds' ? ceph_mds_config
    'osd' ? ceph_osd_config
    'mon' ? ceph_mon_config
    'rgw' ? ceph_rgw_config{}
};

@documentation{ overarching ceph cluster type, with osds, mons and msds }
type ceph_cluster = {
    'monitors' : ceph_monitor{3..} # with match
    'mdss' ? ceph_mds{} # with match
    'initcfg' : ceph_configfile
    'deployhosts' : type_fqdn{1..} # key should match value of /system/network/hostname of one or more hosts of the cluster
    'key_accept' ? choice('first', 'always') # explicit accept host keys
    'ssh_multiplex' : boolean = true
};

@documentation{
Decentralized config feature:
For use with dedicated pan code that builds the cluster info from remote templates.
}
type ceph_daemons = {
    'osds' : ceph_osd{}
    'max_add_osd_failures' : long(0..) = 0
};

type ceph_supported_version = string with match(SELF, '[\d*]+\.[\d*]+(\.[\d*]+)?'); # TODO  minimum 12.2.2
type ceph_deploy_supported_version = string with match(SELF, '\d+\.\d+\.\d+'); # TODO minimum 1.5.39

@documentation{
ceph cluster configuration
we only support node to be in one ceph cluster named ceph
this schema only works with Luminous 12.2.2 and above
 }
type ceph_component = {
    include structure_component
    'cluster' ? ceph_cluster
    'daemons' ? ceph_daemons
    'config' ? ceph_configfile
    'ceph_version' : ceph_supported_version
    'deploy_version' ? ceph_deploy_supported_version
    'release' : choice('Luminous') = 'Luminous'
};
