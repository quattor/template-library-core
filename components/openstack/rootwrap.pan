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
# #
# openstack, 17.12.0-rc1, rc1_1, Mon Dec 18 2017
#

@documentation{
The goal of the root wrapper is to allow a service-specific unprivileged 
user to run a number of actions as the root user, in the safest manner possible.
Some OpenStack services (nova, neutron,..) must execute this wrapper as root.
More info:
https://wiki.openstack.org/wiki/Rootwrap
}

unique template components/openstack/rootwrap;

include 'components/sudo/config';


"/software/components/sudo/privilege_lines" = {
    sudos = dict(
        'nova', list(
            '/usr/bin/nova-rootwrap /etc/nova/rootwrap.conf *'),
        'neutron', list(
            '/usr/bin/neutron-rootwrap /etc/neutron/rootwrap.conf *',
            '/usr/bin/neutron-rootwrap-daemon /etc/neutron/rootwrap.conf'),
    );
    foreach (user; cmds; sudos) {
        foreach (i; cmd; cmds) {
            append(dict(
                "host", "ALL",
                "options", "NOPASSWD:",
                "run_as", "root",
                "user", user,
                "cmd", cmd,
            ));
        };
    };
    SELF;
};
