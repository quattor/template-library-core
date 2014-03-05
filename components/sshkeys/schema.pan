################################################################################
# This is 'TPL/schema.tpl', a ncm-sshkeys's file
################################################################################
#
# VERSION:    1.1.6, 11/03/11 22:44
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Guillaume Philippon <philippo@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

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


