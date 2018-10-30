declaration template quattor/types/hardware;

include 'pan/types';
include 'quattor/functions/hardware';
include 'quattor/types/aquilon/hardware';
include 'quattor/types/annotation';
include 'quattor/types/sensors';
include 'quattor/physdevices';

@documentation{
    RAM definition
}
type structure_ram = {
    include structure_annotation
    "size" : long # "Size of module in MB"
    "data_rate" ? string
};


@documentation{
    CPU definition
}
type structure_cpu = {
    include structure_annotation
    @{ desc = CPU clock speed in MHz }
    "speed" : long
    @{ desc = Number of cores on each CPU chip }
    "cores" : long(1..) = 1
    @{ desc = Number of execution threads on each CPU chip, e.g. a hyperthreaded eight core chip would have 16 threads }
    "max_threads" ? long(1..)
    "hyperthreading" ? boolean with {
        deprecated(0, 'The hyperthreading cpu property has been deprecated, please migrate to max_threads');
        true;
    }
};


@documentation{
    NIC definition
}
type structure_nic = {
    include structure_annotation
    "hwaddr"       : type_hwaddr
    "driver"       ? string
    "driverrpms"   ? string[]
    "media"        ? string
    "name"         ? string
    "pxe"          ? boolean
    "boot"         ? boolean
    "maxspeed"     ? long
    "role"         ? string = ''
};

@documentation{
    Fiber channel definition
}
type fcahwaddr = string with is_a_fcahwaddr (SELF);
type structure_fca = {
    include structure_annotation
    "hwaddr" ? fcahwaddr # "IEEE fiber Channel World Wide Name"
    "active" ? boolean # "Is this port being used"
};

@documentation{
    BMC controller
}
type structure_bmc = {
    include structure_annotation
    "hwaddr" ? type_hwaddr
};

@documentation{
    PCI addresses
}
type structure_pci = {
    "vendor" ? long
    "device" ? long
    "class"  ? long
};

@docmentation{
    The Infiniband hardware address is a series of twenty bytes encoded as hex values
    and separated with a colon or a hyphen.  Within a value you must
    use a consistent separator.

    Ex.: 80-06-00-48-FE-80-00-00-00-00-00-00-00-00-00-00
        80:06:00:48:FE:80:00:00:00:00:00:00:00:00:00:00

    Both upper and lower-case hex digits are accepted.
}
type ibhwaddr = string with match(SELF, '^[\dA-Fa-f]{2}([:-])[\dA-Fa-f]{2}(\1[\dA-Fa-f]{2}){18}$');

@documentation{
    The Infiniband guid is a series of 16 chars preceded by 0x.

    Ex.: 0x0002c9030002fb06

    Both upper and lower-case hex digits are accepted.
}
type ibguid = string with match(SELF, '^0x[\dA-Fa-f]{16}$');

@documentation{
    IB HCA
}
type structure_ibhca = {
    include structure_annotation
    "driver" ? string
    "media" ? string
    "name" ? string
    "pxe" ? boolean
    "boot" ? boolean
    "ca_name" ? string
    "portnum" ? long(1..)
    "hwaddr" ? ibhwaddr
    "active" ? boolean
    "pci" ? structure_pci
    "guid" ? ibguid
};

type structure_gpu = {
    include structure_annotation
    "driver" ? string
    "pci" ? structure_pci
    "ram" ? structure_ram
};

@documentation{
    Card and/or addon
}
type structure_cards = {
    @{Indexed by device name (eth0, venet0...)}
    "nic" : structure_nic{}
    @{Fiber channel}
    "fca" ? structure_fca[]
    @{For hardware RAID controllers}
    "raid" ? structure_raid{}
    @{For describing IDE controllers}
    "ide" ? structure_raid{}
    @{For describing SATA controllers}
    "sata" ? structure_raid{}
    @{For describing Parallel SCSI controllers}
    "scsi" ? structure_raid{}
    @{For describing SAS controllers}
    "sas" ? structure_raid{}
    @{For describing BMC controllers}
    "bmc" ? structure_bmc[]
    @{For describing IB HCA's}
    "ib" ? structure_ibhca{}
    @{For describing GPUs}
    "gpu" ? structure_gpu[]
} with is_valid_card_ports (SELF);

@documentation{
    Serial console
}
type structure_serial_console = {
    include structure_annotation
    "parity" ? string with match(SELF, "^(n|p)$")
    "speed"  ? long
    "unit"   ? long
    "word"   ? long(7..8)
};

@documentation{
    Telnet console
}
type structure_telnet_console = {
    "port" : long = 23
    "fqdn" : string
};

@documentation{
    generic network console
}
type structure_generic_network_console = {
    "fqdn"      ? string
    "hwaddr"    : type_hwaddr
};

@documentation{
    IPMI console
}
type structure_ipmi_console = {
    include structure_generic_network_console
};

@documentation{
    SSH console
}
type structure_ssh_console = {
    include structure_generic_network_console
};

@documentation{
    BMC console
}
type structure_bmc_console = {
    include structure_generic_network_console
};

@documentation{
    DPC console
}
type structure_dpc_console = {
    include structure_generic_network_console
};

@documentation{
    console definition
}
type structure_console = extensible {
    "serial" ? structure_serial_console
    "telnet" ? structure_telnet_console
    "ssh"    ? structure_ssh_console
    "ipmi"   ? structure_ipmi_console
    "dpc"    ? structure_dpc_console
    "bmc"    ? structure_bmc_console
    "preferred" ? string[]
};

@documentation{
    System benchmark results
    benchmarks is used to hold the performance benchmark for the machine
    i.e. HEPSpec06 score
    this might be used to scale things such as the wall time
    example of using this might be :
    variable CONDOR_WN_SCALING_FACTOR = value('/hardware/benchmarks/hepspec06')
          / ( 4 * get_num_of_cores()) ;
}
type structure_benchmark = {
    "hepspec06" ? double
    @{unit: Gflops}
    "HPL" ? double
    @{unit: MB/s TRIAD}
    "stream" ? double
};

@documentation{
    BIOS definition
}
type structure_bios = {
    "version" : string
    "releasedate" : string
};

@documentation{
    Hardware definition
}
type structure_hardware = {
    include structure_annotation
    "cpu"          ? structure_cpu[]
    "ram"          ? structure_ram[]
    "bios"         ? structure_bios
    "cards"        ? structure_cards
    "console"      ? structure_console
    "nodename"     ? string
    "benchmarks" ? structure_benchmark
    "sensors" ? structure_sensor_types
    @{Date at which the hardware support runs out.}
    "support"      ? type_isodate
    @{Date at which the hardware is procured.}
    "procured"     ? type_isodate
    # Obsolete field, use the appropriate "cards" sub-field instead!!
    "harddisks"    ? structure_raidport{}
    # Aquilon-specific resources
    include structure_hardware_aquilon
};

# TODO is it ok to define variables in declartaion templates?
final variable ENC_TYPES = '^(blade|dumb|hypervisor)$';

@documentation{
    describe a "box" as a collection of several nodes. We distinguish
    3 types of enclosures:
      blade       -> physical boxes with intelligence, such as, NIC, disk, etc
      dump        -> physical boxes with no intelligence (just power unit)
      hypervisor  -> virtual machines
    Each enclosure describes a parent-child relation, where "children" lists
    profile names which must exist. Warning! If you have a node called 'foo',
    use 'foo' as a profile name, *not* 'profile_foo' which raises a validation
    error; however, to allow a smooth transition, each name will be transparently
    matched against 'foo' and 'profile_foo', which are considered to be the same.
    The optional "maxchildren", if set, is used for validating the children
    list's size when defined: it must satisfy
      "maxchildren" >= length("children")
    this allow to describe an empty enclosure by defining *only*
      "/system/enclosure/type" = "...";
      "/system/enclosure/maxchildren" = 0;
}
type structure_enclosure = {
    "type"          : string with match(SELF, ENC_TYPES)
                        || error("enclosure type must be one of: " + ENC_TYPES)
    "children"      ? string[1..] with is_profile_list(SELF)
    "maxchildren"   ? long
} with {
    if (exists(SELF['children']) && exists(SELF['maxchildren'])) {
        SELF['maxchildren'] >= length(SELF['children'])
        || error("enclosure has too many children, max is " +
            to_string(SELF['maxchildren']));
    } else {
        true;
    };
};
