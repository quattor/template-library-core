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

declaration template components/openstack/network;

include 'components/openstack/network/neutron';

@documentation{
Type to define OpenStack network services
}
type openstack_network_config = {
    'neutron' ? openstack_neutron_config
} with openstack_oneof(SELF, 'neutron');

