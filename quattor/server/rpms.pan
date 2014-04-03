unique template quattor/server/rpms;

prefix '/software/packages';

# Apache
include { 'rpms/web_server' };

# DHCP
'{dhcp}' = nlist();

# DHCP
'{tftp-server}' = nlist();

# Add Subversion
'{subversion}' = nlist();

