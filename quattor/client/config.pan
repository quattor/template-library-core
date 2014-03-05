#
# Configuration for quattor client software
#
template quattor/client/config;

variable QUATTOR_PROFILE_WORLD_READABLE ?= false;
# Define QUATTOR_PROFILE_NAME to OBJECT+'.xml' to use legacy profile name format
variable QUATTOR_PROFILE_NAME ?= FULL_HOSTNAME+".xml";

#
# Add RPMs for Quattor Client
#

include { 'quattor/client/rpms' };


#
# Configure CCM and CDP
#

include { 'components/ccm/config' };

# Don't allow QUATTOR_PROFILE_URL to be undefined : no meaningful default
variable QUATTOR_PROFILE_URL ?= {
                                 error("You MUST define variable QUATTOR_PROFILE_URL (URL where the machine profiles are located)");
                                };

"/software/components/ccm/profile" = QUATTOR_PROFILE_URL + "/"+ QUATTOR_PROFILE_NAME;
"/software/components/ccm/world_readable" = if ( QUATTOR_PROFILE_WORLD_READABLE ) {
                                              1;
                                            } else {
                                              0;
                                            };

include { 'components/cdp/config' };
"/software/components/cdp/fetch" = "/usr/sbin/ccm-fetch";
"/software/components/cdp/fetch_smear" = 30;
