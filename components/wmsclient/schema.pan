################################################################################
# This is 'TPL/schema.tpl', a ncm-wmsclient's file
################################################################################
#
# VERSION:    1.3.3-1, 19/02/10 15:23
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/wmsclient/schema;

include { 'quattor/schema' };

type component_wmsclient_mw_ce_attrs = {
  'rank'               ? string
  'rankMPI'            ? string
  'requirements'       ? string
};

type component_wmsclient_mw_def_attrs = {
  'defaultSchema'      ? string = 'Glue'
  'CEAttrs'            ? component_wmsclient_mw_ce_attrs{}
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

type component_wmsclient_mw_entry = {
	'active'         : boolean = true
	'configDir'      ? string
	'classAdsHelper' ? string
	'defaultAttrs'   ? component_wmsclient_mw_def_attrs
};

type component_wmsclient = {
	include structure_component
	'edg'           ? component_wmsclient_mw_entry
	'glite'         ? component_wmsclient_mw_entry
	'wmproxy'       ? component_wmsclient_mw_entry
};

bind '/software/components/wmsclient' = component_wmsclient;


