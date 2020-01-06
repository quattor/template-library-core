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

declaration template components/openstack/container-infra;

include 'components/openstack/container-infra/magnum';

@documentation {
Type to define OpenStack container orchestration engine
}
type openstack_container_infra_config = {
    'magnum' ? openstack_magnum_config
} with openstack_oneof(SELF, 'magnum');
