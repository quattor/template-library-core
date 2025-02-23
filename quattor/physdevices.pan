@{
    Data structures described on
    https://twiki.cern.ch/twiki/bin/view/FIOgroup/TsiCDBPhysicalDevices
    and
    https://twiki.cern.ch/twiki/bin/view/FIOgroup/TsiCDBBlockDevices#Hardware_RAID
}
declaration template quattor/physdevices;

include 'quattor/types/annotation';

type structure_raidport = {
    include structure_annotation
    "capacity" : long # In MB or GB? Quattor always used MB for this...
    "interface" : choice('sata', 'sas', 'ide', 'scsi', 'nvme')
    "boot" ? boolean
    # To handle disk device names as /dev/cciss/xxxpn, where 'p' must be inserted
    # between device name and partition number (e.g. HP SmartArray)
    "part_prefix" : string = ''
};
