################################################################################
# This is 'TPL/schema.tpl', a ncm-chkconfig's file
################################################################################
#
# VERSION:    1.2.1, 27/11/10 16:35
# AUTHOR:     Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
# MAINTAINER: Vlado Bahyl <Vladimir.Bahyl@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/chkconfig
#
#
#
############################################################

declaration template components/chkconfig/schema;

include { 'quattor/schema' };

type service_type = {
  "name"      ? string
  "add"       ? boolean
  "del"       ? boolean
  "on"        ? string
  "off"       ? string
  "reset"     ? string
  "startstop" ? boolean
};

type component_chkconfig_type = {
  include structure_component
  "service" : service_type{}
  "default" ? string with match (SELF, 'ignore|off')
};

bind "/software/components/chkconfig" = component_chkconfig_type;
