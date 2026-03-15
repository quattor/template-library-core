# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Michel Jouvin, Gabor Gombas, Ben Jones
#

# #
# dhcp, 26.2.0-rc2, rc2_1, Sun Mar 15 2026
#
template quattor/aii/dhcp/config;

include 'quattor/aii/dhcp/schema';

bind "/system/aii/discovery/dhcp" = structure_dhcp_module_info;

prefix "/system/aii/discovery/dhcp";

@documentation{
    Enable the plugin
}
"enabled" = true;

bind "/system/aii/dhcp" = structure_dhcp_dhcp_info;

prefix "/system/aii/dhcp";

@documentation{
    Override the TFT server for this node
}
variable AII_DHCP_TFTPSERVER ?= null;
"tftpserver" ?= AII_DHCP_TFTPSERVER;

@documentation{
    Additional options to include in the host definition
}
variable AII_DHCP_ADDOPTIONS ?= null;
"options" ?= AII_DHCP_ADDOPTIONS;
