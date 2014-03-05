# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Steve Traylen <steve.traylen@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # alternatives, 13.1.2, 1, 20131015-1106
      #

declaration template components/alternatives/schema;

include { 'quattor/schema' };

type alternatives_config = {
    'dummy' : string = 'OK'
} = nlist();

type alternatives_component = {
    include structure_component
    'config' : alternatives_config
};

bind '/software/components/alternatives' = alternatives_component;
