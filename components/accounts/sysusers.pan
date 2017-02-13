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
# accounts, 16.12.0, 1, Wed Jan 04 2017
#

############################################################
#
# System users which shouldn't be removed by component.
# This template MUST be included in the configuration!
#
############################################################

unique template components/accounts/sysusers;

'/software/components/accounts/kept_users' ?= dict(
    'bin', '',
    'daemon', '',
    'dhcpd', '',
    'dhcp', '',
    'chrony', '',
    'adm', '',
    'lp', '',
    'sync', '',
    'shutdown', '',
    'halt', '',
    'mail', '',
    'news', '',
    'uucp', '',
    'nginx', '',
    'tcpdump', '',
    'operator', '',
    'games', '',
    'gopher', '',
    'ftp', '',
    'nobody', '',
    'vcsa', '',
    'mailnull', '',
    'rpm', '',
    'ntp', '',
    'rpc', '',
    'xfs', '',
    'gdm', '',
    'rpcuser', '',
    'nfsnobody', '',
    'nscd', '',
    'sshd', '',
    'postfix', '',
    'polkitd', '',
    'apache', '',
    'pcap', '',
    'mysql', '',
    'postgres', '',
    'nagios', '',
    'ident', '',
    'radvd', '',
    'smmsp', '',
    'root', '',
    'lemon', '',
    'avahi', '',
    'avahi-autoipd', '',
    'dbus', '',
    'man', '',
    'screen', '',
    'utempter', '',
    'named', '',
    'distcache', '',
    'exim', '',
    'haldaemon', '',
    'hpglview', '',
    'sindes', '',
    'dialout', '',
    'ssh_keys', '',
    'stap-server', '',
    'amanda', '',
    'amandabackup', '',
    'saslauth', '',
    'abrt', '',
    'tss', '',
    'ldap', '',
    'libstoragemgmt', '',
    'nslcd', '',
    'oprofile', '',
    'pegasus', '',
    'services', '',
    'quagga', '',
    'radiusd', '',
    'squid', '',
    'tomcat', '',
    'unbound', '',
    'uuidd', '',
    'webalizer', '',
    'apacheds', '',
    'mongod', '',
    'mongodb', '',
    'rabbitmq', '',
    'memcached', '',
);
