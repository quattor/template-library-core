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
# pxelinux, 15.4.0, 1, 2015-06-03T15:28:04Z
#
unique template quattor/aii/pxelinux/schema;

# PXE configuration.
type structure_pxelinux_pxe_info = {
    "initrd"	: string
    "kernel"	: string
    "ksdevice"	: string with match (SELF, ("^(eth[0-9]+|link|p[0-9]+p[0-9]+|fd|em[0-9]+|bootif)$")) || is_hwaddr (SELF)
    "kslocation"	: type_absoluteURI
    "label"		: string
    "append"	? string
    "rescue"	? string
    "livecd"	? string
    "firmware"	? string
    "setifnames" ? boolean
    "updates" ? type_absoluteURI
};

bind "/system/aii/nbp/pxelinux" = structure_pxelinux_pxe_info;
