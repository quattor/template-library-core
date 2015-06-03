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
# pbsknownhosts, 15.4.0, 1, 2015-06-03T15:27:32Z
#
#

declaration template components/pbsknownhosts/schema;

include { 'quattor/schema' };

type pbsknownhosts_component = {
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

bind '/software/components/pbsknownhosts' = pbsknownhosts_component;
