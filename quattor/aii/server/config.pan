template quattor/aii/server/config;

variable AII_NBP_DIR ?= undef;
variable AII_OSINSTALL_DIR ?= undef;
variable AII_PROFILE_PREFIX ?= undef;
variable AII_SHELLFE_CONFIG ?= '/etc/aii/aii-shellfe.conf';
variable AII_USE_FQDN ?= true;
variable AII_DHCP_CONFIGURE ?= false;
variable AII_DHCP_CONFIG_SITE ?= undef;
variable AII_DHCP_DHCPD_CONF_FILE ?= '/etc/dhcpd.conf';

include { 'components/aiiserver/config' };

# aii-shellfe configuration


prefix '/software/components/aiiserver/aii-shellfe';

'cdburl' ?= QUATTOR_PROFILE_URL;

'profile_prefix' ?= if (is_defined(AII_PROFILE_PREFIX) && (length(AII_PROFILE_PREFIX) > 0)) {
                      AII_PROFILE_PREFIX;
                    } else {
                      null;
                    };

'profile_format' ?= if ( is_defined(QUATTOR_PROFILE_FORMAT) ) {
                      QUATTOR_PROFILE_FORMAT;
                    } else {
                      null;
                    };     

'use_fqdn' ?= if (is_defined(AII_USE_FQDN) ) {
                if ( AII_USE_FQDN) {
                  true;
                } else {
                  false;
                };
              } else {
                null;
              };

'osinstalldir' ?= if ( is_defined(AII_OSINSTALL_DIR) ) {
                    AII_OSINSTALL_DIR;
                  } else {
                    null;
                  };     

'nbpdir' ?= if ( is_defined(AII_NBP_DIR) ) {
              AII_NBP_DIR;
            } else {
              null;
            };     



# aii-dhcp configuration

prefix '/software/components/aiiserver/aii-dhcp';

'dhcpconf' ?= AII_DHCP_DHCPD_CONF_FILE;

'restartcmd' ?= if ( is_defined(AII_DHCP_RESTART_CMD) ) {
                  AII_DHCP_RESTART_CMD;
                } else {
                  null;
                };     

include {AII_DHCP_CONFIG_SITE};
