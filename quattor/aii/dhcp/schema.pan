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
# dhcp, 26.2.0-rc1, rc1_1, Mon Feb 23 2026
#

unique template quattor/aii/dhcp/schema;

type structure_dhcp_module_info = {
    "enabled" ? boolean
};

type structure_dhcp_dhcp_info = {
    @{TFTP server to use for this node, instead of the host where AII runs}
    "tftpserver" ? string
    @{Name of the file to boot}
    "filename" ? string
    @{
      Custom options to include in the host definition. Note: if the type
      of an option requires quoting, then the quotes must be included in
      the value you specify in templates.
    }
    "options" ? string{}
    @{Verify hostname in DNS}
    "verifyhostname" ? boolean
};
