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
# dhcp, 16.10.0-rc3, rc3_1, Wed Nov 23 2016
#
template quattor/aii/dhcp/config;

include 'quattor/aii/dhcp/schema';

# TFTP server
# This is optional. Only it is necessary if your TFTP server is running on
# a different machine than the DHCP server
#
# "/system/aii/dhcp/options/tftpserver" = "tftp.mydomain.org"
#
variable AII_DHCP_TFTPSERVER ?= null;
"/system/aii/dhcp/options/tftpserver" ?= AII_DHCP_TFTPSERVER;

# Additional DHCP options (optional).
# Warning: They will be added in the host declaration of dhcpd.conf file, so
# do not forget the ';' at the end
#
#"/system/aii/dhcp/addoptions" = "options blu-blo-bli bla;";
#
variable AII_DHCP_ADDOPTIONS ?= null;
"/system/aii/dhcp/options/addoptions" ?= AII_DHCP_ADDOPTIONS;
