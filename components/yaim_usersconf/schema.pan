# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan van Eldik <Jan.van.Eldik@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# yaim_usersconf, 15.2.0, 1, 20150323-1249
#
#
############################################################
#
# type definition components/yaim_usersconf
#
#
#
#
#
############################################################

declaration template components/yaim_usersconf/schema;

include { 'quattor/schema' };

type structure_yaim_usersconf_gridusers = {
        "name" : string
        "flag" ? string
};

type structure_yaim_usersconf_gridgroups = {
        "role" : string # "VOMS path"
        "flag" ? string
};

type structure_yaim_usersconf_vo = {
    "name"      : string
    "staticusers"  ? structure_yaim_usersconf_gridusers[]
    "gridusers"    ? structure_yaim_usersconf_gridusers[]
    "gridgroups"   ? structure_yaim_usersconf_gridgroups[]

};

type yaim_usersconf_component = {
    include component_type
    "users_conf_file"  ? string # "location of users.conf file"
    "groups_conf_file" ? string # "location of groups.conf file"
    "vo"               ? structure_yaim_usersconf_vo{}
    "usecache"         ? boolean

};

bind "/software/components/yaim_usersconf" = yaim_usersconf_component;


