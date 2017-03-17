declaration template quattor/functions/network;

include 'pan/types';

@documentation{
    descr = returns modified copy of /system/network/interfaces\
            with defaults for gateway, netmask, broadcast for each network interface
    arg = a dict with defaults (mandatory 'netmask' and 'gateway', optional 'broadcast')
}
function set_interface_defaults = {
    # general checking
    if( ARGC != 1 ) error("precisely one argument expected: the dict with defaults");
    defaults = ARGV[0];

    if( !is_dict(defaults) ) error("expecting dict with defaults as argument");
    if( !exists(defaults["netmask"]) || !is_ip(defaults["netmask"]) ) {
        error("default settings for netmask expected");
    };
    if( !exists(defaults["gateway"]) || !is_ip(defaults["gateway"]) ) {
        error("default settings for gateway expected");
    };

    # make defaults to all interfaces present in /system/network/interfaces
    interfaces = value("/system/network/interfaces");
    foreach (ifname; ifsets; interfaces) {
        foreach (idx; key; list('netmask', 'broadcast', 'gateway')) {
            if( (!exists(ifsets[key]) || !is_defined(ifsets[key])) &&
                exists(defaults[key]) ) {
                ifsets[key]  = defaults[key];
            };
        };
    };

    interfaces;
};


@documentation{
    descr = returns the first (alphabetically sorted) NIC interface found with boot=true
}
function boot_nic = {
    foreach (ifname; data; value("/hardware/cards/nic")) {
        if(exists(data['boot']) && data['boot']) {
            return(ifname);
        };
    };
    error("boot flag not set for any nic");
};


@documentation{
    desc = dict defining a non default MTU size for each interface in the system.\
           dict keys can be an interface name, an interface type (e.g. eth, em), DEFAULT or BOOT.\
           BOOT entry is applied to main interface (no explicit value must exist for it).\
           DEFAULT entry is applied to all interfaces without an explicit value defined.
    values = MTU size (integer) for the interface or undef to prevent explicit definition of the MTU size.
    default = none
    required = no
}
variable MTU ?= dict();

@documentation{
    descr = This function configures all the network interfaces declared in\
            /hardware/cards/nic. Parameters are taken from variable\
            NETWORK_PARAMS (dict) for the main (boot) interface, others\
            are configured with dhcp. For every interface, if there is\
            an entry in variable MTU, it is also applied to the interface.\
            Modifies and returns SELF.
}
function copy_network_params = {
    nics = value('/hardware/cards/nic');

    if (!is_defined(nics)) {
        error("No network cards defined in the configuration");
    };
    if (!is_dict(nics)) {
        error("/hardware/cards/nic must be a dict");
    };

    boot = boot_nic();
    foreach (name; data; nics) {
        if ( name == boot ) {
            net_params = NETWORK_PARAMS;
        } else {
            net_params = dict();
            net_params["onboot"] = "no";
            net_params["bootproto"] = "dhcp";
        };

        mtu_size = undef;
        nic_type = replace('\d+$', '', name);

        # In the case of the boot interface, doesn't allow an explicit declaration of
        # the MTU value both for the boot interface name and for the BOOT entry. If
        # one of them is undefined, take the explicit one.
        if ( exists(MTU["BOOT"]) && (name == boot) ) {
            if ( is_defined(MTU["BOOT"]) ) {
                if ( is_defined(MTU[name]) ) {
                    error(format("MTU size defined for '%s' (%d): MTU['BOOT'] entry (%d) not allowed",
                                    name, MTU[name], MTU["BOOT"]));
                } else {
                    mtu_size = MTU["BOOT"];
                };
            } else if ( is_defined(MTU[name]) ) {
                mtu_size = MTU[name];
            };
        } else if ( exists(MTU[name])) {
            mtu_size = MTU[name];
        } else if ( exists(MTU[nic_type])) {
            mtu_size = MTU[nic_type];
        } else if ( exists(MTU["DEFAULT"])) {
            mtu_size = MTU["DEFAULT"];
        };

        if ( is_defined(mtu_size) ) {
            net_params["mtu"] = mtu_size;
        };

        net_params["set_hwaddr"] = true;
        SELF[name] = net_params;
    };
    SELF;
};

@documentation{
    descr = Test if ipv4 address is in network range.
    arg = ipv4 address to test
    arg = network address (is always recomputed using subnet mask)
    arg = subnet mask
}
function ip_in_network = {
    # Implemented as follows:
    #    test if network from IP and subnet mask is equal to provided network
    #    network is also masked (to support an ip in the network range instead of the network address)
    if (ARGC != 3) {
        error(format("%s requires 3 arguments: ip, network, mask", FUNCTION));
    };

    ip = ARGV[0];
    if (! is_ipv4(ip)) {
        error(format("%s 1st argument is not an ipv4 address, got %s", FUNCTION, to_string(ip)));
    };

    network = ARGV[1];
    if (! is_ipv4(network)) {
        error(format("%s 2nd argument is not an ipv4 address, got %s", FUNCTION, to_string(network)));
    };
    mask = ARGV[2];
    if (! is_ipv4(mask)) {
        error(format("%s 3rd argument is not an ipv4 address, got %s", FUNCTION, to_string(mask)));
    };

    # returns list, optional 2 element is netmask from CIDR notation
    ip_l = ip4_to_long(ip);
    nw_l = ip4_to_long(network);
    mask_l = ip4_to_long(mask);

    # network is IP (bitwise-)and mask

    return((ip_l[0] & mask_l[0]) == (nw_l[0] & mask_l[0]));
};


@documentation{
    descr = Checks which subnet ipaddr is a member of and returns the corresponding subnet\
 parameters for netmask, gateway... 
    arg = subnet list, a list of dict where the keys are all the properties supported\
 by structure_interface + 'subnet' which is the subnet number (result of applying the\
 mask to the address. `subnet` key is mandatory, 'netmask` defaults to 255.255.255.0.
    arg = ip address to test
}
function get_subnet_params = {
    if ( ARGC != 2 ) {
        error("get_subnet_params requires 2 arguments");
    };

    subnet_list = ARGV[0];
    ipaddr = ARGV[1];

    if ( !is_list(subnet_list) ) {
        error("get_subnet_params first argument must be a list");
    };

    foreach (i; params; subnet_list) {
        if ( !is_dict(params) ) {
            error("Subnet description must be a dict");
        };
        # 'subnet' used to be a regexp: replace '.*' at the end of the
        # regexp by '.0' to help with the backward compatibility
        # Also replace every occurence of '\.' by `.` if between
        # address tokens.
        if ( is_defined(params['subnet']) ) {
            subnet_saved = params['subnet'];
            params['subnet'] = replace('\\?\.\*', '.0', params['subnet']);
            params['subnet'] = replace('(?<=\d)\\\.(?=\d)', '.', params['subnet']);
            if ( params['subnet'] != subnet_saved ) {
                deprecated(0, format("%s - specifying subnet as a regexp (%s) is deprecated: converted to %s",
                                     OBJECT,
                                     subnet_saved,
                                     params['subnet']));
            };
        } else {
            error(format("'subnet' key missing for subnet %s", i));
        };
        if ( ! is_defined(params['netmask']) ) {
            params['netmask'] = '255.255.255.0';
        };

        if ( ip_in_network(ipaddr, params['subnet'], params['netmask']) ) {
            delete(params["subnet"]);        # Suppress subnet key
            return (params);
        };
    };

    error(format("No subnet matching address %s found", ipaddr));
};


