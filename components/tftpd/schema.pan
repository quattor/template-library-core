# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Matthias Schroder <Matthias.Schroder@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



declaration template components/tftpd/schema;

include {'quattor/schema'};

type component_tftpd_type = {
    include structure_component
    "disable"       : string with match (SELF, 'yes|no')
    "wait"          : string with match (SELF, 'yes|no')
    "user"          : string
    "server"        :  string
    "server_args"   : string
};

bind "/software/components/tftpd" = component_tftpd_type;
