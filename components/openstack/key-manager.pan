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

declaration template components/openstack/key-manager;

include 'components/openstack/key-manager/barbican';

@documentation {
Type to define OpenStack Key Manager service
}
type openstack_key_manager_config = {
    'barbican' ? openstack_barbican_config
} with openstack_oneof(SELF, 'barbican');
