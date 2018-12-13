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

declaration template components/openstack/catalog;

include 'components/openstack/catalog/murano';

@documentation {
Type to define OpenStack catalog services
}
type openstack_catalog_config = {
    'murano' ? openstack_murano_config
} with openstack_oneof(SELF, 'murano');
