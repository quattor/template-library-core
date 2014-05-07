# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   German Cancio <German.Cancio@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # state, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141729, 20140507-1516
      #

declaration template components/state/schema;

include { 'quattor/schema' };

type state_config = {
    'dummy' : string = 'OK'
} = nlist();

type state_component = {
    include structure_component
    'config' : state_config
};

bind '/software/components/state' = state_component;
