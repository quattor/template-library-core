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
# pbsknownhosts, 24.10.0-rc2, rc2_1, Wed Nov 06 2024
#
#

declaration template components/pbsknownhosts/schema;

include 'quattor/schema';

type pbsknownhosts_component = {
    include structure_component
    'configFile' : string = '/opt/edg/etc/edg-pbs-knownhosts.conf'
    'pbsbin' : string = '/usr/bin'
    'nodes' : string = ''
    'keytypes' : string = 'rsa1,rsa,dsa'
    'knownhosts' : string = '/etc/ssh/ssh_known_hosts'
    'knownhostsscript' ? string
    'targets' ? string[]
    'shostsConfigFile' ? string
    'shosts' ? string
    'shostsscript' ? string
};

bind '/software/components/pbsknownhosts' = pbsknownhosts_component;
