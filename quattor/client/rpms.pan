#
# Packages needed for a quattor client.
# RPMs are for Scientific Linux
#

template quattor/client/rpms;

variable QUATTOR_RELEASE_RPM_VERSION = format("%s.%s-%s",QUATTOR_RELEASE,0,1);

# Quattor services.

prefix "/software/packages";

"{ccm}" = nlist();
"{perl-Crypt-SSLeay}" = nlist(); # TODO remove when ccm has it as dependency
"{cdp-listend}" = nlist();

# NCM components.
"{ncm-cdispd}" = nlist();
"{ncm-ncd}" = nlist();
"{ncm-query}" = nlist();


# Include RPMs provided by OS.
# This is done last to allow redefining some RPMs that may be provided
# by the OS if the previous list is not suitable for a specific
# version/arch.
variable QUATTOR_CLIENT_OS_INCLUDE ?= 'config/quattor/client';
include { if_exists(QUATTOR_CLIENT_OS_INCLUDE) };
