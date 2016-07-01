#
# Packages needed for a quattor client.
# RPMs are for Scientific Linux 
#

unique template quattor/client/rpms;

include 'quattor/client/version';

'/software/packages' = {
    # python-elementtree is required by YUM on SL5 but not listed as a dependency
    # of any other package
    if ( OS_VERSION_PARAMS['majorversion'] == '5' ) {
      SELF[escape('python-elementtree')] = nlist();
    };

    # Quattor
    SELF[escape('cdp-listend')] = nlist();
    SELF[escape('ncm-cdispd')] = nlist();
    SELF[escape('ncm-query')] = nlist();

    # ideally, include components/spma/config with version locked rpm
    spma = escape('ncm-spma');
    if(! exists(spma)) {
        SELF[spma] = nlist();
    };
    ncd = escape('ncm-ncd');
    if(! exists(ncd)) {
        SELF[ncd] = nlist();
    };

      
    SELF;
};
