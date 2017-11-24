#
# Packages needed for a quattor client.
# RPMs are for Scientific Linux 
#

unique template quattor/client/rpms;

@{
descr = variable to enable installation of ncm-cdispd and ccm-listend
values = boolean
default = true
required = No
}
variable QUATTOR_INSTALL_CDISPD ?= true;

include 'quattor/client/version';

'/software/packages' = {
    # python-elementtree is required by YUM on SL5 but not listed as a dependency
    # of any other package
    if ( OS_VERSION_PARAMS['majorversion'] == '5' ) {
      pkg_repl('python-elementtree');
    };

    # Quattor
    pkg_repl('ncm-ncd',QUATTOR_PACKAGES_VERSION,'noarch');
    pkg_repl('ncm-query',QUATTOR_PACKAGES_VERSION,'noarch');
    pkg_repl('ncm-spma',QUATTOR_PACKAGES_VERSION,'noarch');

    if ( QUATTOR_INSTALL_CDISPD ) {
        pkg_repl('cdp-listend',QUATTOR_PACKAGES_VERSION,'noarch');
        pkg_repl('ncm-cdispd',QUATTOR_PACKAGES_VERSION,'noarch');
    };

    SELF;
};
