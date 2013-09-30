################################################################################
# This is 'namespaces/standard/quattor/physdevices.tpl', a pan-templates's file
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
# Data structures descibed on
# https://twiki.cern.ch/twiki/bin/view/FIOgroup/TsiCDBPhysicalDevices
# and
# https://twiki.cern.ch/twiki/bin/view/FIOgroup/TsiCDBBlockDevices#Hardware_RAID

declaration template quattor/physdevices;

include {'quattor/schema'};



type structure_raidport = {
    include structure_annotation
    "capacity" : long # In MB or GB? Quattor always used MB for this...
    # Isn't this redundant with the fact that the port is under
    # /hardware/cards/{sata,sas,ide} and the card's media field?
    "interface" : string with match (SELF, "^(sata|sas|ide|scsi)$")
    "boot" ? boolean
    # To handle disk device names as /dev/cciss/xxxpn, where 'p' must be inserted
    # between device name and partition number (e.g. HP SmartArray)
    "part_prefix" : string = ''
    # For CERN: "model" is part of structure_annotation
};

# Structure modelling a RAID controller
type structure_raid = {
    include structure_annotation
    "bbu" ? boolean
    "numberports" : long (1..)
    "cache" ? long # In MB
    "ports" : structure_raidport{}
} with length (SELF["ports"]) <= SELF["numberports"];
