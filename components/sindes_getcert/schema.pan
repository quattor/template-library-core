# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <Stijn.De.Weirdt@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



declaration template components/sindes_getcert/schema;

include {'quattor/schema'};

type sindes_getcert = {
    include structure_component
    ## only supported protocol?
    'protocol'          : string with match (SELF, 'https://')
    'server'            : type_network_name
    'new_cert_port'     : long
    'renew_cert_port'   : long
    
    'domain_name'       : string
    'x509_O'            : string
    'x509_OU'           : string
    
    'cert_dir'          : string
    'client_key'        : string
    'client_cert'       : string
    'client_cert_key'   : string
    
    'ca_cert'           : string
    'ca_cert_rpm'       : string
    
    'aii_gw'            ? type_network_name
};

bind "/software/components/sindes_getcert" = sindes_getcert;
