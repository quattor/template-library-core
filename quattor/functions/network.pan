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
