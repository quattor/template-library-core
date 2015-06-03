# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Alvaro Simon Garcia <Alvaro.SimonGarcia@UGent.be>
#

# 
# #
# opennebula, 15.4.0, 1, 2015-06-03T15:21:52Z
#

@documentation{
sudo template sets the sudoers file.
oneadmin user should be able to restart libvirt services
and set virsh secret (Ceph) in each hypervisor.
}

unique template components/opennebula/sudo;

include 'components/sudo/config';

"/software/components/sudo/privilege_lines" = {
     sudolist = list(
         "/sbin/service libvirtd restart",
         "/sbin/service libvirt-guests restart",
         '/usr/bin/virsh secret-set-value *',
         '/usr/bin/virsh secret-define *',
         '/usr/sbin/iptables',
         '/usr/sbin/ebtables',
         '/usr/bin/ovs-vsctl',
         '/usr/bin/ovs-ofctl',
     );
     foreach (i; cmd; sudolist){
         nl = dict("host", "ALL",
                    "options", "NOPASSWD:",
                    "run_as", "ALL",
                    "user", "oneadmin");
         nl["cmd"] = cmd;
         append(nl);
     };
     SELF;
};
