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
      pkg_repl('python-elementtree');
    };

    # Quattor
    pkg_repl('cdp-listend',QUATTOR_PACKAGES_VERSION,'noarch');
    pkg_repl('ncm-cdispd','17.3.1-1','noarch');
    pkg_repl('ncm-ncd',QUATTOR_PACKAGES_VERSION,'noarch');
    pkg_repl('ncm-query',QUATTOR_PACKAGES_VERSION,'noarch');
    pkg_repl('ncm-spma',QUATTOR_PACKAGES_VERSION,'noarch');

    SELF;
};
