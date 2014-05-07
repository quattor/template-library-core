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
      # serialclient, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141728, 20140507-1516
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
