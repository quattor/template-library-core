# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # zephyrclt, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141730, 20140507-1516
      #

declaration template components/zephyrclt/schema;

include { 'quattor/schema' };

type zephyrclt_config = {
    'dummy' : string = 'OK'
} = nlist();

type zephyrclt_component = {
    include structure_component
    'config' : zephyrclt_config
};

bind '/software/components/zephyrclt' = zephyrclt_component;
