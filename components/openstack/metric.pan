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

declaration template components/openstack/metric;

include 'components/openstack/metric/ceilometer';

@documentation{
Type to define OpenStack metric services
}
type openstack_metric_config = {
    'ceilometer' ? openstack_ceilometer_config
} with openstack_oneof(SELF, 'ceilometer');
