################################################################################
# This is 'TPL/schema.tpl', a ncm-cron's file
################################################################################
#
# VERSION:    1.4.3-1, 02/02/10 15:50
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Guillaume Philippon <philippo@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/cron/schema;

include { 'quattor/schema' };

# Function to check that other log properties are not present if disabled=yes
function structure_cron_log_valid = {
  if ( is_defined(SELF['disabled']) && SELF['disabled'] ) {
    if ( is_defined(SELF['name']) ||
         is_defined(SELF['owner']) ||
         is_defined(SELF['mode']) ) {
           error('cron log file properties are present despite log file creation has been disabled.');
         };
  };
  true;
};

type structure_cron_log = {
    'disabled'  ? boolean
    'name'      ? string
    'owner'     ? string
    'mode'      ? string
} with structure_cron_log_valid(SELF);

type structure_cron_timing = {
    'minute'    ? string
    'hour'      ? string
    'day'       ? string
    'month'     ? string
    'weekday'   ? string
    'smear'     ? long(0..1440)
};

type structure_cron = {
    'name'      : string
    'user'      ? string
    'group'     ? string
    'frequency' ? string
    'timing'    ? structure_cron_timing
    'command'   : string
    'comment'   ? string
    'env'       ? string{}
    'log'       ? structure_cron_log
};

type component_cron = {
    include structure_component
    'entries' ? structure_cron[]
    'deny'    ? string[]
    'allow'   ? string[]
};

bind '/software/components/cron' = component_cron;


