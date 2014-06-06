# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# ${developer-info
# ${author-info}
# #
# dhcp, 14.5.0-rc11, 20140606.1525.48
#

unique template quattor/aii/dhcp/schema;

# Information needed for creating the Kickstart file
type structure_dhcp_dhcp_info = {
	"tftpserver"	? string
	"options"	? string{}
};

bind "/system/aii/dhcp" = structure_dhcp_dhcp_info;
