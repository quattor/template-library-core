template quattor/server/service;

variable AII_OSINSTALL_DIR ?= '/www/ks';
variable AII_NBP_DIR ?= '/tftpboot/quattor/pxelinux.cfg';
variable AII_PROFILE_PREFIX ?= '';

# Configure Quattor server
include { 'quattor/aii/server/service' };

# Add DHCP, TFTP, and Apache
include { if_exists('rpms/network_server') };
include { if_exists('rpms/web_server') };

# Add Java
include { if_exists('config/os/java') };

# Add LAL version of Subversion client
include { if_exists('config/os/svn_client') };

# Add YUM server
#include { 'config/os/yum' };

# Reapply OS updates
include { if_exists('config/os/updates') };

