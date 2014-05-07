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
      # alternatives, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141722, 20140507-1516
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
