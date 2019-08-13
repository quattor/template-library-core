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

declaration template components/openstack/image;

include 'components/openstack/image/glance';

@documentation{
Type to define OpenStack image services
}
type openstack_image_config = {
    'glance' ? openstack_glance_config
} with openstack_oneof(SELF, 'glance');
