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

    # Quattor
    SELF[escape('ncm-spma')] = nlist();
    SELF[escape('ccm')] = nlist();
    SELF[escape('cdp-listend')] = nlist();
    SELF[escape('ncm-cdispd')] = nlist();
    SELF[escape('ncm-ncd')] = nlist();
    SELF[escape('ncm-query')] = nlist();
      
    SELF;
};
