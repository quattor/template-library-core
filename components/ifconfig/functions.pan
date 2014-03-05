################################################################################
# This is 'TPL/functions.tpl', a ncm-ifconfig's file
################################################################################
#
# VERSION:    1.1.0, 26/06/07 00:07
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/ifconfig/functions;

#
# Function to copy interface parameters from /system/network/interfaces to
# ifconfig component configuration for the interface used for booting
#
# Requires that the interface has been properly defined into /system/network/interfaces
# and that one interface has the property boot set to true.
# 
function ifconfig_boot_nic = {
	system_if_base = "/system/network/interfaces";
	
	# boot_nic() throws an error if no NIC defined as boot nic
	boot_nic = boot_nic();
	
	# Check corresponding interface has been defined
	if_definition = system_if_base + "/" + boot_nic;
	if ( ! exists(if_definition) ) {
	  error("Interface "+ boot_nic+" definition not found in "+system_if_base); 
	};
	
	# Check if interface already defined in ifconfig interface list
    if (exists(SELF) && is_defined(SELF)) {
	  if ( ! is_nlist(SELF) ) {
	  	error("ifconfig interface list exists but is not a nlist");
	  };
      if_list = SELF;
      if ( exists(if_list[boot_nic]) ) {
        debug(boot_nic+" already defined. New definition ignored");
        return (SELF);
      };
    } else {
      if_list = nlist();
    };

	# Copy interface definition from /system/network/interfaces
	if_list[boot_nic] = value(if_definition);
	
    if_list;
};

