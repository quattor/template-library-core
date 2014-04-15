template quattor/server/service;

variable AII_OSINSTALL_DIR ?= '/www/ks';
variable AII_NBP_DIR ?= '/tftpboot/quattor/pxelinux.cfg';
variable AII_PROFILE_PREFIX ?= '';

# Configure Quattor server
include { 'quattor/aii/server/service' };

# Add DHCP, TFTP, and Apache
include { 'rpms/network_server' };
include { 'rpms/web_server' };

# Add Java
include { 'config/os/java' };

# Add LAL version of Subversion client
include { 'config/os/svn_client' };

# Reapply OS updates
include { 'config/os/updates' };

