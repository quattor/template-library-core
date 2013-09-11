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
      # alternatives, 13.9.0, 1, 20130911-1927
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
