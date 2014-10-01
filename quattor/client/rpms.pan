#
# Packages needed for a quattor client.
# RPMs are for Scientific Linux 
#

unique template quattor/client/rpms;

include { 'quattor/client/version' };

# Default version of packages in the selected OS
include { 'rpms/package_default_versions' };


'/software/packages' = {
    # OS-provided required packages
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

    # Quattor
    SELF[escape('ncm-spma')] = nlist();
    SELF[escape('ccm')] = nlist();
    SELF[escape('cdp-listend')] = nlist();
    SELF[escape('ncm-cdispd')] = nlist();
    SELF[escape('ncm-ncd')] = nlist();
    SELF[escape('ncm-query')] = nlist();
      
    SELF;
};
