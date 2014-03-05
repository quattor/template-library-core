################################################################################
# This is 'TPL/schema.tpl', a ncm-ntpd's file
################################################################################
#
# VERSION:    1.1.5-1, 23/10/08 05:41
# AUTHOR:     Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
# MAINTAINER: Jan Iven <jan.iven@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/ntpd/schema;

include { 'quattor/schema' };

type ntpd_clientnet_type = {
    "net"  : type_ip # Network of this machines NTP clients
    "mask" : type_ip # Netmask of this machines NTP clients
};

type component_ntpd_type = {
    include structure_component
    "servers"           ? type_hostname[]
    "clientnetworks"    ? ntpd_clientnet_type[] # Optional list of client networks
};

bind "/software/components/ntpd" = component_ntpd_type;
