################################################################################
# This is 'namespaces/standard/quattor/functions/network.tpl', a pan-templates's file
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
#
# functions related to "/system/network"
#
################################################################################

declaration template quattor/functions/network;

include { 'pan/types' };

################################################################################
# set_interface_defaults
#
# makes defaults for gateway, netmask, broadcast for each network interface
################################################################################
function set_interface_defaults = {
    # general checking
    if( ARGC != 1 ) error("precisely one argument expected");
    if( !is_nlist(ARGV[0]) ) error("expecting nlist as argument");
    if( !exists(ARGV[0]["netmask"]) || !is_ip(ARGV[0]["netmask"]) ) {
        error("default settings for netmask expected");
    };
    # Don't require broadcast as it can be computed from netmask
    #if( !exists(ARGV[0]["broadcast"]) || !is_ip(ARGV[0]["broadcast"]) ) {
    #   error("default settings for broadcast expected");
    #   };
    if( !exists(ARGV[0]["gateway"]) || !is_ip(ARGV[0]["gateway"]) ) {
        error("default settings for gateway expected");
    };

    # make defaults to all interfaces present in /system/network/interfaces
    interfaces = value("/system/network/interfaces");
    aaa = first(interfaces, ifname, ifsets);
    while(aaa) {
        if( !exists(ifsets["netmask"]) || !is_defined(ifsets["netmask"]) ) {
            ifsets["netmask"]    = ARGV[0]["netmask"];
        };
        if( (!exists(ifsets["broadcast"]) || !is_defined(ifsets["broadcast"])) &&
                    (exists(ARGV[0]["broadcast"])) ) {
            ifsets["broadcast"]  = ARGV[0]["broadcast"];
        };
        if( !exists(ifsets["gateway"]) || !is_defined(ifsets["broadcast"]) ) {
            ifsets["gateway"]    = ARGV[0]["gateway"];
        };
        aaa = next(interfaces, ifname, ifsets);
    };

    # return the settings
    interfaces;
};


################################################################################
# boot_nic
#
# returns the first NIC interface found with boot=true
################################################################################
function boot_nic = {
    base = "/hardware/cards/nic";
    nics = value(base);
    device = "";
    ok = first(nics,i,v);
    while (ok) {
        path = base+"/"+to_string(i)+"/boot";
        if (exists(to_string(path))) {
            if (value(path)) {
                device = i;
            };
        };
        ok = next(nics,i,v);
    };
    if (device=="") {
        error("boot flag not set for nic");
    };
    device;
};


################################################################################
# get_subnet_params(subnet_list:list, ipaddr:string)
#
# Checks which subnet ipaddr is a member of and returns the corresponding subnet
# parameters for netmask, gateway...
#
# subnet_list must contain a list of nlist. Each list element describes a subnet.
# Possible keys are all the properties supported by structure_interface plus
# 'subnet' that must contain a regexp matching the subnet addresses.
# This is a 'dirty solution' to work around the lack of bitwise AND in pan...
################################################################################
function get_subnet_params = {
    if ( ARGC != 2 ) {
        error("get_subnet_params requires 2 arguments");
    };

    subnet_list = ARGV[0];
    ipaddr = ARGV[1];

    if ( !is_list(subnet_list) ) {
        error("get_subnet_params first argument must be a list");
    };

    ok = first(subnet_list, i, subnet);
    while (ok) {
        if ( !is_nlist(subnet) ) {
            error("Subnet description must be a nlist");
        };
        if ( !exists(subnet["subnet"]) ) {
            error("Subnet description must contain a 'subnet' key");
        };

        if ( match(ipaddr, subnet["subnet"]) ) {
            delete(subnet["subnet"]);        # Suppress subnet key
                return (subnet);
        };
        ok = next(subnet_list, i, subnet);
    };

    error("No subnet matching address "+ipaddr+" found");
};


############################################################
# This function copies the network parameters in the global
# variable NETWORK_PARAMS (an nlist) to SELF.  SELF must be
# a list and is usually the path /system/network/interfaces.
############################################################

function copy_network_params = {
  if_list=value('/hardware/cards/nic');
  if ( is_defined(if_list) ) {
    foreach (if_name;v;if_list) {
      if ( if_name == boot_nic()) {
        net_params = NETWORK_PARAMS;
      } else {
        net_params = nlist();
        net_params["onboot"] = "no";
        net_params["bootproto"] = "dhcp";
        if ( exists(MTU[if_name])) {
          net_params["mtu"] = MTU[if_name];
        };
      };
      net_params["set_hwaddr"] = true;
      SELF[if_name] = net_params;
    };
  } else {
    error('No network interface defined in the configuration');
  };
  SELF;
};



