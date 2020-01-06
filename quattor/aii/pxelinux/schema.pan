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
# pxelinux, 19.12.0-rc1, rc1_1, Mon Jan 06 2020
#

declaration template quattor/aii/pxelinux/schema;

include 'pan/types';

@documentation{
    PXE configuration
}
type structure_pxelinux_pxe_info = {
    "initrd" : string
    "kernel" : string
    "ksdevice"  : string with match(SELF, '^(bootif|link)$') || is_hwaddr(SELF) || exists("/system/network/interfaces/" + escape(SELF))
    "kslocation" : type_absoluteURI
    "label"  : string
    "append" ? string
    "rescue" ? string
    "livecd" ? string
    "firmware" ? string
    "setifnames" ? boolean
    "updates" ? type_absoluteURI
    @{Get (static) IP details used for ksdevice configuration form this device.
      For most network configs like bridges and bonds, this is not required.}
    "ipdev" ? string with exists(format("/system/network/interfaces/%s", SELF))
};
