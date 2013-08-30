# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Marco Emilio Poleggi <Marco.Poleggi@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # rproxy, 13.1.1, 1, 20130830-1520
      #

declaration template components/rproxy/schema;

include { 'quattor/schema' };

type rproxy_config = {
    'dummy' : string = 'OK'
} = nlist();

type rproxy_component = {
    include structure_component
    'config' : rproxy_config
};

bind '/software/components/rproxy' = rproxy_component;
