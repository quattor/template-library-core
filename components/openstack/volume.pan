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

declaration template components/openstack/volume;

include 'components/openstack/volume/cinder';

@documentation{
Type to define OpenStack volume services
}
type openstack_volume_config = {
    'cinder' ? openstack_cinder_config
} with openstack_oneof(SELF, 'cinder');
