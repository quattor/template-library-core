unique template quattor/server/rpms;

# Apache
include 'rpms/web_server';

'/software/packages' = {
    if ( OS_VERSION_PARAMS['majorversion'] >= '8' ) {
        pkg_repl('dhcp-client');
    } else {
        pkg_repl('dhcp');
    };

    pkg_repl('tftp-server');
    pkg_repl('subversion');

    SELF;
};
