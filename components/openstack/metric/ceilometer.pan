# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#   Alvaro Simon Garcia <Alvaro.SimonGarcia@UGent.be>
#

# 


declaration template components/openstack/metric/ceilometer;

include 'components/openstack/identity';



@documentation{
    list of Gnocchi api section
}
type openstack_ceilometer_gnocchi_api = {
    'auth_mode' : string = 'keystone'
};


@documentation{
    list of Gnocchi indexer section
}
type openstack_ceilometer_gnocchi_indexer = {
    @{The SQLAlchemy connection string to use to connect to the database}
    'url' : string
};

@documentation{
    list of Gnocchi storage section
}
type openstack_ceilometer_gnocchi_storage = {
    'file_basepath' ? absolute_file_path = '/var/lib/gnocchi'
    'driver' : choice ('file', 'ceph') = 'file'
    @{Ceph pool name to use}
    'ceph_pool' ? string
    @{Ceph username (ie: admin without "client." prefix)}
    'ceph_username' ? string
    @{Ceph keyring path}
    'ceph_keyring' ? absolute_file_path
    @{Ceph configuration file}
    'ceph_conffile' ? absolute_file_path
} = dict();


@documentation{
    list of Ceilometer Gnocchi service sections
}
type openstack_ceilometer_gnocchi_config = {
    'api' : openstack_ceilometer_gnocchi_api
    'indexer' : openstack_ceilometer_gnocchi_indexer
    'storage' : openstack_ceilometer_gnocchi_storage
    'keystone_authtoken' : openstack_domains_common
};

@documentation{
    list of Ceilometer service configuration sections
}
type openstack_ceilometer_service_config = {
    'DEFAULT' : openstack_DEFAULTS
    'service_credentials' : openstack_domains_common
};

type openstack_quattor_ceilometer = openstack_quattor;

@documentation{
    list of Ceilometer service configuration sections
}
type openstack_ceilometer_config = {
    'service' ? openstack_ceilometer_service_config
    'gnocchi' ? openstack_ceilometer_gnocchi_config
    'quattor' : openstack_quattor_ceilometer = dict()
};
