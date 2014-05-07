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

# #
      # slocate, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141711, 20140507-1516
      #

declaration template components/slocate/schema;

include { 'quattor/schema' };

type slocate_config = {
    'dummy' : string = 'OK'
} = nlist();

type slocate_component = {
    include structure_component
    'config' : slocate_config
};

bind '/software/components/slocate' = slocate_component;
