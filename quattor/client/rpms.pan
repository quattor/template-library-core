#
# Packages needed for a quattor client.
# RPMs are for Scientific Linux 
#

unique template quattor/client/rpms;

# Set to true if installing the machine with AII v2 (pre-YUM)
variable AII_V2_INSTALL ?= false;


include { 'quattor/client/version' };

# Default version of packages in the selected OS
include { 'rpms/package_default_versions' };


'/software/packages' = {
    # Part of the OS, installed by Anaconda as part of the base packages
    if ( is_defined(OS_VERSION_PARAMS['majorversion']) && (OS_VERSION_PARAMS['majorversion'] == '5') ) {
      SELF[escape('yum-priorities')] = nlist();
    } else {
      SELF[escape('yum-plugin-priorities')] = nlist();
    };
    SELF[escape('yum-plugin-versionlock')] = nlist();
    SELF[escape('perl-AppConfig')] = nlist();
    if ( OS_VERSION_PARAMS['majorversion'] == '5' ) {
      SELF[escape('python-elementtree')] = nlist();
    };
    if ( AII_V2_INSTALL ) {
        # Yum
        # Quattor
        pkg_repl('perl-Set-Scalar');
        pkg_repl('perl-common-sense');
        pkg_repl('perl-JSON-XS');
        pkg_repl('ncm-spma', QUATTOR_PACKAGES_VERSION, 'noarch');
        pkg_repl('ccm', QUATTOR_PACKAGES_VERSION, 'noarch');
        pkg_repl('cdp-listend', QUATTOR_PACKAGES_VERSION, 'noarch');
        # Dependencies
        pkg_repl('perl-LC', QUATTOR_PACKAGES_VERSION, 'noarch');
        pkg_repl('perl-Proc-ProcessTable');
        pkg_repl('perl-CAF', QUATTOR_PACKAGES_VERSION, 'noarch');
        # NCM components.
        pkg_repl('ncm-cdispd', QUATTOR_PACKAGES_VERSION, 'noarch');
        pkg_repl('ncm-ncd', QUATTOR_PACKAGES_VERSION, 'noarch');
        pkg_repl('ncm-query', QUATTOR_PACKAGES_VERSION, 'noarch');

      } else {
        # Quattor
        SELF[escape('ncm-spma')] = nlist();
        SELF[escape('ccm')] = nlist();
        SELF[escape('cdp-listend')] = nlist();
        SELF[escape('ncm-cdispd')] = nlist();
        SELF[escape('ncm-ncd')] = nlist();
        SELF[escape('ncm-query')] = nlist();
      
      };

      SELF;
};
