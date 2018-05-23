# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 
# #
# accounts, 18.3.0, 1, Wed May 23 2018
#

############################################################
#
# System groups which shouldn't be removed by component.
# This template MUST be included in the configuration!
#
############################################################

unique template components/accounts/sysgroups;

'/software/components/accounts/kept_groups' ?= dict(
    'bin', '',
    'daemon', '',
    'sys', '',
    'dhcpd', '',
    'dhcp', '',
    'chrony', '',
    'adm', '',
    'tty', '',
    'disk', '',
    'lp', '',
    'mem', '',
    'kmem', '',
    'wheel', '',
    'mail', '',
    'news', '',
    'uucp', '',
    'man', '',
    'floppy', '',
    'games', '',
    'slocate', '',
    'utmp', '',
    'nscd', '',
    'rpcuser', '',
    'gopher', '',
    'rpc', '',
    'rpm', '',
    'ntp', '',
    'dip', '',
    'gdm', '',
    'xfs', '',
    'nginx', '',
    'tcpdump', '',
    'mailnull', '',
    'ftp', '',
    'lock', '',
    'wine', '',
    'vcsa', '',
    'sshd', '',
    'radvd', '',
    'postfix', '',
    'postgres', '',
    'postdrop', '',
    'polkitd', '',
    'ident', '',
    'nobody', '',
    'users', '',
    'nfsnobody', '',
    'apache', '',
    'pcap', '',
    'mysql', '',
    'smmsp', '',
    'root', '',
    'nagios', '',
    'plugdev', '',
    'usb', '',
    'sindes', '',
    'stapusr', '',
    'ssh_keys', '',
    'exim', '',
    'stapdev', '',
    'lemon', '',
    'libstoragemgmt', '',
    'haldaemon', '',
    'amanda', '',
    'ldap', '',
    'oprofile', '',
    'pegasus', '',
    'services', '',
    'quagga', '',
    'radiusd', '',
    'squid', '',
    'tomcat', '',
    'stap-server', '',
    'amandabackup', '',
    'saslauth', '',
    'unbound', '',
    'uuidd', '',
    'webalizer', '',
    'cimsrvr', '',
    'vboxusers', '',
    'apacheds', '',
    'mongod', '',
    'mongodb', '',
    'rabbitmq', '',
    'memcached', '',
    'colord', "",
);
