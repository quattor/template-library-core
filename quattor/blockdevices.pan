@{
    Type definitions for block devices.
}
declaration template quattor/blockdevices;

include 'quattor/physdevices';

type blockdev_string = string with exists ("/system/blockdevices/" + SELF)
    || error (SELF + " must be a path relative to /system/blockdevices");

type physdev_string = string with exists ("/system/blockdevices/physical_devs/" + SELF)
    || error (SELF + " must be a path relative to "
              + "/system/blockdevices/physical_devs");

type parttype_string = string with match (SELF, '^(primary|extended|logical)$');

type vg_string = string with exists ("/system/blockdevices/volume_groups/" + SELF)
    || error (SELF + " must be a path relative to "
              + "/system/blockdevices/volume_groups");

type lv_string = string with exists ("/system/blockdevices/logical_volumes/" + SELF)
    || error (SELF + " must be a path relative to "
              + "/system/blockdevices/logical_volumes");
@documentation{
    parted partition flags (from "info parted")
}
type blockdevices_partition_flags = {
    "bios_grub" ? boolean
    "legacy_boot" ? boolean
    "boot" ? boolean
    "lba" ? boolean
    "root" ? boolean
    "swap" ? boolean
    "hidden" ? boolean
    "raid" ? boolean
    "LVM" ? boolean
    "PALO" ? boolean
    "PREP" ? boolean
    "DIAG" ? boolean
};

type blockdevices_partition_type = {
	"holding_dev" : physdev_string # "Device holding the partition"
	"size" ? long # "Size in MB"
	"ksopts" ? string # "Kickstart options for disk e.g. --grow, only for installation (AII)"
	"type" : parttype_string = "primary"
	"offset" ? long(0..)
	"flags" ? blockdevices_partition_flags
};

@documentation{
    Software RAID using the MD device
}
type blockdevices_md_type = {
    "device_list" : blockdev_string[] # "List of device paths"
    "raid_level" : string with match (SELF,'^RAID[0156]$')
    "stripe_size" : long = 64 # "Stripe size in KB"
    "num_spares" ? long # "Number of spare devices"
    # Declare the style of RAID metadata (superblock) to be used. This is --metadata in `man mdadm`
    "metadata" ? string = '0.90' with index(SELF, list('0', '0.90', '1.0', '1.1', '1.2', 'ddf', 'imsm', 'default')) > 0
};

@documentation{
    lvm cache volume and mode
}
type blockdevices_logicalvolumes_cache_type = {
    "cache_lv" : lv_string
    "cachemode" ? string with match(SELF, "^(writethrough|writeback)$")
};

@documentation{
    LVM
}
type blockdevices_logicalvolumes_type = {
    "size" ? long # "Size in MB"
    "volume_group" : vg_string
    "stripe_size" ? long # Size of the stripe. If not used, no striping
    "chunksize" ? long = 64 # "chunk size in KB"
    "devices" ? blockdev_string[]
    "cache" ? blockdevices_logicalvolumes_cache_type
    "type" ? string with match (SELF,
        '^(cache(-pool)|error|linear|mirror|raid[14]|raid5_(la|ls|ra|rs)|raid6_(nc|nr|zr)|raid10|snapshot|striped|thin(-pool)?|zero)$')
};

type blockdevices_lvm_type = {
    "device_list" : blockdev_string[] # "List of device paths"
};


@documentation{
    Files containing filesystems, to be mounted with loopback option.
}
type blockdevices_file_type = {
	"size" : long # "Size in MB"
	"owner" : string = "root" # "User owning the file"
	"group" : string = "root" # "Group owning the file"
	"permissions" ? long # "Permission bits for the file"
};

@documentation{
    String defining either a port or a hardware RAID unit.
}
type raid_device_path = string with exists ("/system/blockdevices/hwraid/"
    + SELF) || is_card_port (SELF);

@documentation{
    blockdevice validation check based on device size
}
type blockdevices_validate_size = {
    @{allowed absolute margin (in MiB) compared to configured size}
    "diff" ? long(0..)
    @{allowed relative margin compared to configured size}
    "fraction" ? double
};

@documentation{
    blockdevice validation check
}
type blockdevices_validate = {
    @{size-based validation}
    "size" ? blockdevices_validate_size
};

type blockdevices_disk_type = {
    "device_path" ? raid_device_path
    "label" : string with match (SELF, ("^(none|msdos|gpt|aix|bsd)$"))
    "readahead" ? long # Blocks for readahead
    @{enable validation checks}
    "validate" ? blockdevices_validate
};

type card_port_string = string with is_card_port (SELF);

@documentation{
    New block device describing hardware RAID.
}
type blockdevices_hwraid_type = {
    "device_list" : card_port_string[]
    "raid_level" ? string with match (SELF,'^(RAID1|RAID5|RAID6|JBOD)$')
    "num_spares" ? long # "Number of spares required"
    "stripe_size" ? long # "Stripe size in KB"
};

@documentation{
    VXVM devices
}
type blockdevices_vxvm_type = {
    "dev_path" : string
    "disk_group" : string
    "volume" : string
    "size" ? long
};

@documentation{
    TMPFS devices (dummy devices)
}
type blockdevices_tmpfs_type = {
};

type structure_blockdevices = {
    "physical_devs" ? blockdevices_disk_type {}
    "volume_groups" ? blockdevices_lvm_type {}
    "logical_volumes" ? blockdevices_logicalvolumes_type {}
    "md" ? blockdevices_md_type {}
    "partitions" ? blockdevices_partition_type {}
    "files" ? blockdevices_file_type {}
    "hwraid" ?  blockdevices_hwraid_type {}
    "vxvm" ? blockdevices_vxvm_type {}
    "tmpfs" ? blockdevices_tmpfs_type
};
