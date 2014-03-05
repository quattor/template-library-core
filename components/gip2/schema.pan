################################################################################
# This is 'TPL/schema.tpl', a ncm-gip2's file
################################################################################
#
# VERSION:    2.7.2, 07/06/12 18:58
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>,Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/gip2/schema;

include { 'quattor/schema' };
include { 'pan/types' };

type structure_gip2_attribute = string[];

type structure_gip2_ldif = {
    'template'              : string
    'ldifFile'              : string
    'entries'               : structure_gip2_attribute{}{}
    'staticInfoArgs'        ? string
};

type component_gip2 = {
    include structure_component
    'user'                  : string
    'group'                 : string = 'root'
    'flavor'                : string = 'lcg' with match(SELF,'lcg|glite')
    'basedir'               : string
    'etcDir'                ? string
    'ldifDir'               ? string
    'pluginDir'             ? string
    'providerDir'           ? string
    'workDirs'              ? string[]
    'staticInfoCmd'         : string
    'bdiiRestartAllowed'    : boolean = true

    'confFiles'             ? string{}
    'ldif'                  ? structure_gip2_ldif{}
    'plugin'                ? string{}
    'provider'              ? string{}
    'scripts'               ? string{}
    'stubs'                 ? structure_gip2_attribute{}{}{}
    'external'              ? string[]
};

bind '/software/components/gip2' = component_gip2;
