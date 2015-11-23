################################################################################
# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Michel Jouvin, Ben Jones, Gabor Gombas, Nick Williams
#

# #
# server, 15.8.0, 1, 2015-10-29T11:34:36Z
#
#
# This file is the standard aii configuration. It only performs some
# validations, combines information that is already available, and 
# set sensible default values.
#
# This file should NOT contain any site or platform customization.
#
################################################################################

unique template quattor/aii/config;

include { 'quattor/functions/network' };
include { 'quattor/functions/filesystem' };
include { 'quattor/aii/schema' };

# First include AII site configuration, if any
variable AII_CONFIG_SITE ?= null;
include {if_exists(to_string(AII_CONFIG_SITE));};

# For convenience
variable AII_DOMAIN ?= value('/system/network/domainname');
variable AII_HOSTNAME ?= value('/system/network/hostname');

# Configure AII plugins
variable AII_OSINSTALL_GEN ?= "quattor/aii/ks/config";
variable AII_NBP_GEN ?= "quattor/aii/pxelinux/config";

# Including the KS generator or equivalent
include { AII_OSINSTALL_GEN};
# Including the PXE generator or equivalent
include { AII_NBP_GEN };

# Include DHCP configuration
# Set AII_DHCP_CONFIG to null if DHCP configuratio is managed outside AII
variable AII_DHCP_CONFIG ?= "quattor/aii/dhcp/config";
include { AII_DHCP_CONFIG };

