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

declaration template components/openstack/share;

include 'components/openstack/share/manila';

@documentation{
Type to define OpenStack shared services
}
type openstack_share_config = {
    'manila' ? openstack_manila_config
} with openstack_oneof(SELF, 'manila');

