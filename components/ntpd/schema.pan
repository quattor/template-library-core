# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



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
