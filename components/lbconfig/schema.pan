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
      # lbconfig, 13.1.1, 1, 20130718-1811
      #
#

declaration template components/lbconfig/schema;

include { 'quattor/schema' };

type structure_index_list = string[];

type lbconfig_component = {
	include structure_component
        'configFile'     : string = 'edg_wl_query_index.conf'
        'indicies'       : structure_index_list{} = nlist('system', list('owner','location','destination'))
};

bind '/software/components/lbconfig' = lbconfig_component;
