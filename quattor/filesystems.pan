@{
    type definitions for filesystems
}
declaration template quattor/filesystems;

@{
    Filestystem definition
}
type structure_filesystem = {
	"block_device"	: string with exists ("/system/blockdevices/" + SELF)
			  # "References an entry in /software/components/blockdevices"
	"format"	: boolean
	"preserve"	: boolean
	"mountpoint"	: string
	"mount"		: boolean
	"mountopts"	: string = "defaults" # "Mount options"
	"type"		: string with match (SELF,
			     "^(ext[2-4]|reiserfs|reiser4|xfs|swap|vfat|jfs|ntfs|tmpfs|none)$")
			  # "Filesystem type."
	"quota"		? long # "Quota percentage"
	"freq"		: long = 0 # "Dump frequency"
	"pass"		: long = 0 # "fsck pass number"
	"mkfsopts"	? string # Extra options passed to mkfs.
	"tuneopts"	? string # Options for filesystem tuning commands (tune2fs, xfs_admin...)
	"label"		? string # Filesystem label, as in LABEL=foo
};
