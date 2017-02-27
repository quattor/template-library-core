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
# pxelinux, 17.2.0-rc1, rc1_1, Mon Feb 27 2017
#

declaration template quattor/aii/pxelinux/schema;

include 'pan/types';

@documentation{
    PXE configuration
}
type structure_pxelinux_pxe_info = {
    "initrd"	: string
    "kernel"	: string
    "ksdevice"  : string with match (SELF, ('^(bootif|link|(eth|seth|em|bond|br|vlan|usb|ib|p\d+p|en(o|(p\d+)?s))\d+(\.\d+)?|enx\p{XDigit}{12})$')) || is_hwaddr (SELF)
    "kslocation"	: type_absoluteURI
    "label"		: string
    "append"	? string
    "rescue"	? string
    "livecd"	? string
    "firmware"	? string
    "setifnames" ? boolean
    "updates" ? type_absoluteURI
};
