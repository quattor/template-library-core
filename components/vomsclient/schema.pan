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
      # vomsclient, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141757, 20140507-1517
      #
#

declaration template components/vomsclient/schema;

include { 'quattor/schema' };
include { 'pan/types' };

type structure_vomsclient_voms_info = {
	'name' ? string
	'host' : type_fqdn
	'port' : type_port
	'cert' : string
	'oldcert' ? string
        'DN' ? string
        'issuer' ? string
};

type vomsclient_component = {
	include structure_component
	'lscfile' ? boolean
	'vomsCertsDir' ? string
	'vomsServersDir' ? string
	'vos' ? structure_vomsclient_voms_info[]{}
};

bind '/software/components/vomsclient' = vomsclient_component;

