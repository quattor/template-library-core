################################################################################
# This is 'TPL/schema.tpl', a ncm-mailaliases's file
################################################################################
#
# VERSION:    1.1.1, 12/06/07 14:40
# AUTHOR:     Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
# MAINTAINER: Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/mailaliases/schema;

include { 'quattor/schema' };
#include { 'pro/declaration/email/type' };

#define type component_mailaliases_type = {
#  include structure_component
#};
#
# rootmail is defined under /system/rootmail
#

type mail_user_type = {
    "recipients"  : type_email[]
#   "allowothers" ? boolean #not yet implemented
};

type component_mailaliases_type = {
    include structure_component
    "user" ? mail_user_type{}
};

bind '/software/components/mailaliases' = component_mailaliases_type;
