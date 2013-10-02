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
      # gip2, 13.1.1, 1, 20130718-1811
      #
#

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

type gip2_component = {
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

bind '/software/components/gip2' = gip2_component;
