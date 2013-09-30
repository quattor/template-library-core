################################################################################
# This is 'namespaces/standard/quattor/filesystems.tpl', a pan-templates's file
################################################################################
#
# VERSION:    3.2.9, 25/11/09 16:16
# AUTHOR:     Martin Bock
# MAINTAINER: Marco Emilio Poleggi <Marco.Emilio.Poleggi@cern.ch>, German Cancio <German.Cancio.Melia@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition for filesystems
#
# DESCRIPTION: @DESCRIPTION@
#
# WARNING: this is experimental code. I mean it. It has not been tested yet.
# Do not use this until this warning is removed.
# If you do, do not complain.
############################################################

declaration template quattor/filesystems;


# Filestystem definition
type structure_filesystem = {
	"block_device"	: string with exists ("/system/blockdevices/" + SELF)
			  # "References an entry in /software/components/blockdevices"
	"format"	: boolean # "See pan-templates 2.1.17"
	"preserve"	: boolean # "See pan-templates 2.1.17"
	"mountpoint"	: string # "See pan-templates 2.1.17"
	"mount"		: boolean # "See pan-templates 2.1.17"
	"mountopts"	: string = "defaults" # "Mount options"
	"type"		: string with match (SELF,
			     "^(ext[2-4]|reiserfs|reiser4|xfs|swap|vfat|jfs|ntfs|tmpfs|none)$")
			  # "Filesystem type. Add here your favourite!"
	"quota"		? long # "Quota percentage"
	"freq"		: long = 0 # "Dump frequency"
	"pass"		: long = 0 # "fsck pass number"
	"mkfsopts"	? string # Extra options passed to mkfs.
	"tuneopts"	? string # Options for filesystem tuning commands (tune2fs, xfs_admin...)
	"label"		? string # Filesystem label, as in LABEL=foo
};

