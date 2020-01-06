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

declaration template components/openstack/rating;

include 'components/openstack/rating/cloudkitty';

@documentation{
Type to define OpenStack rating services
}
type openstack_rating_config = {
    'cloudkitty' ? openstack_cloudkitty_config
} with openstack_oneof(SELF, 'cloudkitty');
