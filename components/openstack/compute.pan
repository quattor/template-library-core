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

declaration template components/openstack/compute;

include 'components/openstack/compute/nova';

@documentation{
Type to define OpenStack compute services
}
type openstack_compute_config = {
    'nova' ? openstack_nova_config
} with openstack_oneof(SELF, 'nova');
