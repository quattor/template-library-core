################################################################################
# This is 'TPL/schema.tpl', a ncm-pbsknownhosts's file
################################################################################
#
# VERSION:    1.1.2, 29/03/07 20:46
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/pbsknownhosts/schema;

include { 'quattor/schema' };

type component_pbsknownhosts = {
	include structure_component
	'configFile'       : string = '/opt/edg/etc/edg-pbs-knownhosts.conf'
	'pbsbin'           : string = '/usr/bin'
	'nodes'            : string = ''
	'keytypes'         : string = 'rsa1,rsa,dsa'
	'knownhosts'       : string = '/etc/ssh/ssh_known_hosts'
	'knownhostsscript' ? string
	'targets'          ? string[]
	'shostsConfigFile' ? string
	'shosts'           ? string
	'shostsscript'     ? string
};

bind '/software/components/pbsknownhosts' = component_pbsknownhosts;
