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
# lbconfig, 19.12.0-rc3, rc3_1, Thu Feb 06 2020
#
#

declaration template components/lbconfig/schema;

include 'quattor/schema';

type structure_index_list = string[];

type lbconfig_component = {
    include structure_component
        'configFile' : string = 'edg_wl_query_index.conf'
        'indicies' : structure_index_list{} = dict('system', list('owner', 'location', 'destination'))
};

bind '/software/components/lbconfig' = lbconfig_component;
