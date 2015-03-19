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
# vomsclient, 15.2.0-rc6, rc6_1, 20150319-2029
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

