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
      # raidman, 13.1.2, 1, 20131015-1106
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
