template quattor/server/service;

variable AII_OSINSTALL_DIR ?= '/www/ks';
variable AII_NBP_DIR ?= '/tftpboot/quattor/pxelinux.cfg';
variable AII_PROFILE_PREFIX ?= '';

# Configure Quattor server
include { 'quattor/aii/server/service' };

# Include additional packages
include { 'quattor/server/rpms' };
