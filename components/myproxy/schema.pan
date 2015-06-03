# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# myproxy, 15.4.0, 1, 2015-06-03T15:27:32Z
#
#

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


type myproxy_component_policies = {
    'renewers' ? string[]
    'retrievers' ? string[]
    'keyRetrievers' ? string[]
    'trustedRetrievers' ? string[]
};

type myproxy_component = {
    include structure_component
    'flavor' : string = 'edg' with match(SELF,'^(edg|glite)$')
    'confFile' ? string = 'opt/edg/etc/edg-myproxy.conf'
    'daemonName' : string = 'myproxy' with match(SELF, '^(myproxy|myproxy-server)$')
    'trustedDNs' ? string[]
    'authorizedDNs' ? myproxy_component_policies
    'defaultDNs' ? myproxy_component_policies
} with component_myproxy_options_valid(SELF);

bind '/software/components/myproxy' = myproxy_component;
