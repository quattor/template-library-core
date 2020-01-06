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


@documentation{
The goal of the root wrapper is to allow a service-specific unprivileged
user to run a number of actions as the root user, in the safest manner possible.
Some OpenStack services (nova, neutron,..) must execute this wrapper as root.
More info:
https://wiki.openstack.org/wiki/Rootwrap
}

unique template components/openstack/rootwrap;

include 'components/sudo/config';

variable ROOTWRAP_SERVICES = list('nova', 'neutron', 'cinder', 'manila', 'ceilometer');

"/software/components/sudo/privilege_lines" = {

    sudos = dict();

    foreach (sudoers; service; ROOTWRAP_SERVICES) {
        if (service == 'neutron') {
            sudos[service] = list (
                format('/usr/bin/%s-rootwrap /etc/%s/rootwrap.conf *', service, service),
                format('/usr/bin/%s-rootwrap-daemon /etc/%s/rootwrap.conf', service, service),
            );
        } else {
            sudos[service] = list(
                format('/usr/bin/%s-rootwrap /etc/%s/rootwrap.conf *', service, service),
            );
        };
    };

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
