################################################################################
# This is 'TPL/schema.tpl', a ncm-lcgbdii's file
################################################################################
#
# VERSION:    2.7.2-1, 07/06/12 19:01
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/lcgbdii/schema;

include { 'quattor/schema' };

include { 'pan/types' };

# Function to check that some optional properties are present in context they
# are requireed
function lcgbdii_check_params = {
    if ( ARGC != 1 ) {
        error('lcgbdii_check_params must receive exactly one argument of type component_lcgbdii');
    };
  
    if ( is_defined(SELF['autoUpdate']) && (SELF['autoUpdate'] == 'yes') && !exists(SELF['updateUrl']) ) {
        error('Property updateUrl required when autoUpdate=yes');
    };

    if ( is_defined(SELF['autoModify']) && (SELF['autoModify'] == 'yes') && !exists(SELF['updateLdif']) ) {
        error('Property updateLdif required when autoModify=yes');
    };

    if ( !is_defined(SELF['port']) && (!is_defined(SELF['portRead']) || !is_defined(SELF['portsWrite'])) ) {
        error('Either port or portRead/portsWrite must be specified');
    };
  
    true;
};


type component_lcgbdii = {
    include structure_component

    'dir'               ? string = '/opt/bdii/'
    'varDir'            : string = '/opt/bdii/var'
    'configFile'        : string = '/opt/bdii/bdii.conf'
    'logFile'           ? string
    'logLevel'          : string = "ERROR" with match(SELF,'^(ERROR|WARNING|INFO|DEBUG)$')

    'schemaFile'        ? string = '/opt/bdii/etc/schemas'
    'schemas'           ? string[]

    'port'              ? type_port
    'portRead'          ? type_port
    'portsWrite'        ? type_port[]
    'user'              : string = 'edguser'
    'bind'              ? string = 'mds-vo-name=local,o=grid'
    'passwd'            ? string
    'searchFilter'      ? string
    'searchTimeout'     ? long(1..)
    'readTimeout'       ? long(1..)
    'breatheTime'       ? long(1..) = 60
    'archiveSize'       ? long
    'autoUpdate'        ? string = 'no' with match (SELF, '^(yes|no)$')
    'autoModify'        ? string = 'no' with match (SELF, '^(yes|no)$')
    'isCache'           ? string = 'no' with match (SELF, '^(yes|no)$')
    'modifyDN'          ? string = 'no' with match (SELF, '^(yes|no)$')
    'RAMDisk'           ? string with match (SELF, '^(yes|no)$')
    'deleteDelay'       ? long
    'fixGlue'           ? string with match (SELF, '^(yes|no)$')

    'updateUrl'         ? type_absoluteURI
    'updateLdif'        ? type_absoluteURI
    'defaultLdif'       ? string = '/opt/bdii/etc/default.ldif'

    'slapd'             ? string
    'slapadd'           ? string
    'slapdConf'         ? string = '/opt/bdii/etc/glue-slapd.conf'
    'slapdDebugLevel'   ? long(0..5)

    'urls'              ? type_absoluteURI{}
  
    'ldifDir'           ? string
    'pluginDir'         ? string
    'providerDir'       ? string
  
} with lcgbdii_check_params(SELF);

bind '/software/components/lcgbdii' = component_lcgbdii;
