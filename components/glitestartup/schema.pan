################################################################################
# This is 'TPL/schema.tpl', a ncm-glitestartup's file
################################################################################
#
# VERSION:    1.1.1-1, 09/03/12 14:22
# AUTHOR:     Michel Jouvin <jouvin@lal.in2p3.fr>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/glitestartup/schema;

include { 'quattor/schema' };

include { 'pan/types' };

type component_glitestartup_service = {
  'args' ? string = ''
};

type component_glitestartup_post_restart = {
  'cmd'            : string
  'expectedStatus' ? long
};

type component_glitestartup = {
  include structure_component

  'configFile'      : string = '/opt/glite/etc/gLiteservices'
  'initScript'      : string = '/etc/rc.d/init.d/gLite'
  'disableOutput'   ? boolean
  'disableError'    ? boolean
  'restartEnv'      ? string[]
  'postRestart'     ? component_glitestartup_post_restart[]
  'restartServices' ? boolean
  'createProxy'     : boolean = true
  'scriptPaths'     : string[] = list('/opt/glite/etc/init.d')
  'services'        : component_glitestartup_service{}
};

bind '/software/components/glitestartup' = component_glitestartup;
