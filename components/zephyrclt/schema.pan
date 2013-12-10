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
      # zephyrclt, 13.12.0, 1, 20131210-1548
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
