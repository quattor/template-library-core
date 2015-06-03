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
# glitestartup, 15.4.0, 1, 2015-06-03T15:27:32Z
#
#

declaration template components/glitestartup/schema;

include { 'quattor/schema' };

include { 'pan/types' };

type glitestartup_component_service = {
  'args' ? string = ''
};

type glitestartup_component_post_restart = {
  'cmd'            : string
  'expectedStatus' ? long
};

type glitestartup_component = {
  include structure_component

  'configFile'      : string = '/opt/glite/etc/gLiteservices'
  'initScript'      : string = '/etc/rc.d/init.d/gLite'
  'disableOutput'   ? boolean
  'disableError'    ? boolean
  'restartEnv'      ? string[]
  'postRestart'     ? glitestartup_component_post_restart[]
  'restartServices' ? boolean
  'createProxy'     : boolean = true
  'scriptPaths'     : string[] = list('/opt/glite/etc/init.d')
  'services'        : glitestartup_component_service{}
};

bind '/software/components/glitestartup' = glitestartup_component;
