################################################################################
# This is 'TPL/schema.tpl', a ncm-syslog's file
################################################################################
#
# VERSION:    0.1.7, 12/03/08 09:23
# AUTHOR:     Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
# MAINTAINER: Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/syslog/schema;

include { 'quattor/schema' };

type component_selector_type = {
    "facility"      : string with match (SELF,'\*|auth|authpriv|cron|daemon|kern|lpr|mail|mark|news|security|syslog|user|uucp|local[0-7]')
    "priority"      : string with match (SELF,'\*|debug|info|notice|none|warning|warn|err|error|crit|alert|emerg|panic')
};

type component_syslog_type = {
    "selector"       ? component_selector_type[]
    "action"         : string
    "comment"        ? string
};

type component_syslog_entries = {
    include structure_component
    "config"         : component_syslog_type[]
    "syslogdoptions" ? string
    "klogdoptions"   ? string
    "fullcontrol"    ? boolean
};

bind '/software/components/syslog' = component_syslog_entries;
