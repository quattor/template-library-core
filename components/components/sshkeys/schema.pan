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



declaration template components/sshkeys/schema;

include { 'quattor/schema' };

type structure_ssh_keypair = {
        'private' : string
        'public'  : string
};

type structure_ssh_hostlist = {
        'hostnames' : type_hostname[]
        'key'       : string
};

type component_sshkeys = {
	include structure_component
        'configpath' ? string
        'rsa'        : structure_ssh_keypair
        'rsa1'       : structure_ssh_keypair
        'dsa'        : structure_ssh_keypair
        'knownhosts' ? structure_ssh_hostlist[]
};

bind '/software/components/sshkeys' = component_sshkeys;


