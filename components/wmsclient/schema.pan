# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# wmsclient, 15.4.0, 1, 2015-06-03T15:27:32Z
#
#

declaration template components/wmsclient/schema;

include { 'quattor/schema' };

type wmsclient_component_mw_ce_attrs = {
  'rank'               ? string
  'rankMPI'            ? string
  'requirements'       ? string
};

type wmsclient_component_mw_def_attrs = {
  'defaultSchema'      ? string = 'Glue'
  'CEAttrs'            ? wmsclient_component_mw_ce_attrs{}
  'defaultVO'          ? string = 'unspecified'
  'errorStorage'       ? string = '/tmp'
  'loggingDestination' ? string
  'listenerPort'       ? type_port = 44000
  'listenerStorage'    ? string = '/tmp'
  'loggingLevel'       ? long = 0
  'loggingSyncTimeout' ? long = 30
  'loggingTimeout'     ? long = 30
  'NSLoggerLevel'      ? long = 0
  'outputStorage'      ? string = '${HOME}/JobOutput'
  'retryCount'         ? long = 3
  'statusLevel'        ? long = 0
};

type wmsclient_component_mw_entry = {
	'active'         : boolean = true
	'configDir'      ? string
	'classAdsHelper' ? string
	'defaultAttrs'   ? wmsclient_component_mw_def_attrs
};

type wmsclient_component = {
	include structure_component
	'edg'           ? wmsclient_component_mw_entry
	'glite'         ? wmsclient_component_mw_entry
	'wmproxy'       ? wmsclient_component_mw_entry
};

bind '/software/components/wmsclient' = wmsclient_component;


