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
      # serialclient, 13.12.0, 1, 20131210-1548
      #

declaration template components/serialclient/schema;

include { 'quattor/schema' };

type serialclient_config = {
    'dummy' : string = 'OK'
} = nlist();

type serialclient_component = {
    include structure_component
    'config' : serialclient_config
};

bind '/software/components/serialclient' = serialclient_component;
