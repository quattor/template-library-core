################################################################################
# This is 'TPL/schema.tpl', a ncm-myproxy's file
################################################################################
#
# VERSION:    1.2.2-1, 17/05/13 15:23
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/myproxy/schema;

include { 'quattor/schema' };

# Function to validate component configuration, in particular
# ensure than obsolete trustedDNs is not specified as the same
# time as new authorizedDNs and defaultDNs.

function component_myproxy_options_valid = {
    if ( is_defined(SELF['trustedDNs']) && (is_defined(SELF['authorizedDNs']) || is_defined(SELF['defaultDNs'])) ) {
        error('trustedDNs is obsolete and cannot be mixed with authorizedDNs and defaultDNs');  
    };
    true;
};


type component_myproxy_policies = {
    'renewers' ? string[]
    'retrievers' ? string[]
    'keyRetrievers' ? string[]
    'trustedRetrievers' ? string[]
};

type component_myproxy = {
    include structure_component
    'flavor' : string = 'edg' with match(SELF,'^(edg|glite)$')
    'confFile' ? string = 'opt/edg/etc/edg-myproxy.conf'
    'daemonName' ? string = 'myproxy'
    'trustedDNs' ? string[]
    'authorizedDNs' ? component_myproxy_policies
    'defaultDNs' ? component_myproxy_policies
} with component_myproxy_options_valid(SELF);

bind '/software/components/myproxy' = component_myproxy;
