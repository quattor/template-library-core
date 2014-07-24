#
# Packages needed for a quattor client.
# RPMs are for Scientific Linux 
#

template quattor/client/rpms;

include { 'quattor/client/version' };

variable DEBUG = debug('Adding packages for Quattor '+QUATTOR_RELEASE+' (pkg version='+QUATTOR_PACKAGES_VERSION+')');

# Quattor services.
"/software/packages"=pkg_repl("ccm",        QUATTOR_PACKAGES_VERSION, "noarch");
"/software/packages"=pkg_repl("cdp-listend",QUATTOR_PACKAGES_VERSION, "noarch");
"/software/packages"=pkg_repl("spma",       QUATTOR_PACKAGES_VERSION, "noarch");
"/software/packages"=pkg_repl("rpmt-py",    QUATTOR_PACKAGES_VERSION, "noarch");

# NCM components.
"/software/packages"=pkg_repl("ncm-cdispd",  "14.6.0-1", "noarch");
"/software/packages"=pkg_repl("ncm-ncd",     QUATTOR_PACKAGES_VERSION, "noarch");
"/software/packages"=pkg_repl("ncm-query",   QUATTOR_PACKAGES_VERSION, "noarch");
"/software/packages"=pkg_repl("ncm-template","1.0.17-1",               "noarch");

# Various Quattor supplied dependencies.
"/software/packages"=pkg_repl("perl-AppConfig-caf","1.9.1-1",               "noarch");
"/software/packages"=pkg_repl("perl-CAF",          QUATTOR_PACKAGES_VERSION,"noarch");
"/software/packages"=pkg_repl("perl-LC",           QUATTOR_PACKAGES_VERSION,"noarch");


# Include RPMs provided by OS.
# This is done last to allow redefining some RPMs that may be provided
# by the OS if the previous list is not suitable for a specific
# version/arch.
variable QUATTOR_CLIENT_OS_INCLUDE ?= if ( length(OS_NS_QUATTOR) == 0 ) {
                                       'pro_software_quattor_client_sl';
                                     } else {
                                       'config/quattor/client';
                                     };
include { QUATTOR_CLIENT_OS_INCLUDE };


# Hacks for corner cases in the support of multiple OS versions
include { 'quattor/client/os_hacks' };
