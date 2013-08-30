# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



declaration template components/mailaliases/schema;

include {'quattor/schema'};
#include pro/declaration/email/type;

#define type component_mailaliases_type = {
#  include structure_component
#};
#
# rootmail is defined under /system/rootmail
#

type mail_user_type = {
    "recipients"  : string[] # can be also a path, e.g. /dev/null
#   "allowothers" ? boolean #not yet implemented
};

type component_mailaliases_type = {
    include structure_component
    "user" ? mail_user_type{}
};

bind "/software/components/mailaliases" = component_mailaliases_type;
