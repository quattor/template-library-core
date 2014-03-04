template quattor/aii/server/config;

variable AII_NBP_DIR ?= undef;
variable AII_OSINSTALL_DIR ?= undef;
variable AII_PROFILE_PREFIX ?= undef;
variable AII_SHELLFE_CONFIG ?= '/etc/aii/aii-shellfe.conf';
variable AII_USE_FQDN ?= true;

variable AII_SF_CONTENTS= {
    contents="cdburl=" + QUATTOR_PROFILE_URL + "\n";

    if (is_defined(AII_PROFILE_PREFIX) && (length(AII_PROFILE_PREFIX) > 0)) {
        contents = contents + "profile_prefix=" + AII_PROFILE_PREFIX + "\n";
    
    };

    if (is_defined(AII_USE_FQDN) && AII_USE_FQDN) {
        contents = contents + "use_fqdn=true\n";
    };

    if ( is_defined(AII_OSINSTALL_DIR) ) {
        contents = contents + "osinstalldir = " + AII_OSINSTALL_DIR + "\n";
    };     

    if ( is_defined(AII_NBP_DIR) ) {
        contents = contents + "nbpdir = " + AII_NBP_DIR + "\n";
    };     

    contents;
};

"/software/components/filecopy/services" =
  npush(escape(AII_SHELLFE_CONFIG),
        nlist("config",AII_SF_CONTENTS,
              "owner","root",
              "perms","0644"));
              
              
variable AII_DHCP_CONFIGURE?="false";

variable AII_DHCP_SERVER_INCLUDE=  {if (AII_DHCP_CONFIGURE == "true"){
        return("config/aii/dhcp-server");
    }
    else {
        return(null);
    };
};

include {AII_DHCP_SERVER_INCLUDE};
