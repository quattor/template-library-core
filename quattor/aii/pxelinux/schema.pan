# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# ${developer-info
# ${author-info}
# #
# pxelinux, 13.1.1, 20130718.1803.33
#
unique template quattor/aii/pxelinux/schema;

# PXE configuration.
type structure_pxelinux_pxe_info = {
	"initrd"	: string
	"kernel"	: string
	"ksdevice"	: string with match (SELF, ("^(eth[0-9]+|link|fd|bootif)$")) || is_hwaddr (SELF)
	"kslocation"	: type_absoluteURI
	"label"		: string
	"append"	? string
	"rescue"	? string
	"livecd"	? string
	"firmware"	? string
};

bind "/system/aii/nbp/pxelinux" = structure_pxelinux_pxe_info;
