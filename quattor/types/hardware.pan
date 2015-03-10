declaration template quattor/types/hardware;

include 'pan/types';
include 'quattor/functions/hardware';
include 'quattor/types/annotation';
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
    "speed"  : long # "CPU clock speed in MHz"
    # Number of cores on each CPU chip, defaults to 1.
    "cores" : long(1..) = 1
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
    Rack definition
}
type structure_rack = {
  "name" : string
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
    Card and/or addon
}
type structure_cards = {
    # Indexed by device name (eth0, venet0...)
    "nic" : structure_nic{}
    # Fiber channel
    "fca" ? structure_fca[]
    # For hardware RAID controllers
    "raid" ? structure_raid{}
    # For describing IDE controllers
    "ide" ? structure_raid{}
    # For describing SATA controllers
    "sata" ? structure_raid{}
    # For describing Parallel SCSI controllers
    "scsi" ? structure_raid{}
    # For describing SAS controllers
    "sas" ? structure_raid{}
    # For describing BMC controllers
    "bmc" ? structure_bmc[]
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
    "bmc"    ? structure_dpc_console
    "preferred" : string[]
};

@documentation{
    Hardware definition
}
type structure_hardware = {
    include structure_annotation
    "cpu"          ? structure_cpu[]
    "ram"          ? structure_ram[]
    "cards"        ? structure_cards
    "rack"     ? structure_rack
    "console"      ? structure_console

    # Obsolete field, use the appropriate "cards" sub-field instead!!
    "harddisks"    ? structure_raidport{}
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
                        || error("enclosure type must be one of: "+ENC_TYPES)
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
