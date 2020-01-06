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

declaration template components/openstack/messaging/rabbitmq;

@documentation{
    Type to enable RabbitMQ and the message system for OpenStack.
}
type openstack_rabbitmq_config = {
    @{RabbitMQ user to get access to the queue}
    'user' : string = 'openstack'
    'password' : string
    @{Set config/write/read permissions for RabbitMQ service.
    A regular expression matching resource names for
    which the user is granted configure permissions}
    'permissions' : string[3] = list('.*', '.*', '.*')
};
