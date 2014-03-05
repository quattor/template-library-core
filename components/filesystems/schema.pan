################################################################################
# This is 'TPL/schema.tpl', a ncm-filesystems's file
################################################################################
#
# VERSION:    0.10.2, 16/09/08 16:37
# AUTHOR:     Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# MAINTAINER: Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
declaration template components/filesystems/schema;

include {'quattor/schema'};
include {'quattor/blockdevices'};
include {'quattor/filesystems'};

type structure_component_filesystems = {
	include structure_component
	# Moved now to /system tree. Kept here only for CERN use.
	# CERN people: uncomment the following:
# 	"blockdevices" : blockdevices_type
# 	"filesystemdefs" : filesystem_type[]
	"protected_mounts" : string[] = list (
	    "/", "/usr", "/home", "/opt", "/var", "/var/lib", "/var/lib/rpm",
	    "/usr/bin", "/usr/sbin", "/usr/lib", "/usr/local/bin", "/usr/lib64",
	    "/bin", "/sbin", "/etc", "swap", "/proc", "/sys", "/dev/pts", "/dev/shm",
	    "/media/floppy", "/mnt/floppy", "/media/cdrecorder", "/media/cdrom",
	    "/mnt/cdrom"
	)
};

bind "/software/components/filesystems" = structure_component_filesystems;
