# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # raidman, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141717, 20140507-1516
      #

declaration template components/raidman/schema;

include { 'quattor/schema' };

type raidman_config = {
    'dummy' : string = 'OK'
} = nlist();

type raidman_component = {
    include structure_component
    'config' : raidman_config
};

bind '/software/components/raidman' = raidman_component;
