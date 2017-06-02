#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#



declaration template components/aiiserver/schema;

include 'quattor/types/component';
include 'pan/types';

type structure_aiishellfe = {
    "cachedir" ? string
    'ca_dir' ? string
    'ca_file' ? string
    "cdburl" : type_absoluteURI
    'cert_file' ? string
    'grub2_efi_kernel_root' ? string
    'grub2_efi_linux_cmd' ? string
    'key_file' ? string
    "lockdir" ? string
    "logfile" ? string
    "nbpdir" ? string
    "nbpdir_grub2" ? string
    "noaction" ? boolean
    "nodhcp" ? boolean
    "nonbp" ? boolean
    "noosinstall" ? boolean
    "osinstalldir" ? string
    "profile_format" : string = "xml"
    "profile_prefix" ? string
    "use_fqdn" : boolean = true
};

type structure_aiidhcp = {
    "dhcpconf" : string = "/etc/dhcpd.conf"
    "restartcmd" ? string
    "norestart" ? boolean
};

type aiiserver_component = {
    include structure_component
    @{Configures the aii-shellfe tool.}
    "aii-shellfe" : structure_aiishellfe
    @{Configures AII::DHCP and the aii-dhcp legacy tool.}
    "aii-dhcp" : structure_aiidhcp
};
