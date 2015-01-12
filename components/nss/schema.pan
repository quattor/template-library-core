# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Morgan Stanley
#

# #
# Current developer(s):
#   Nick Williams <Nick.Williams@morganstanley.com>
#

# 

################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/nss/schema;

include { 'quattor/schema' };

type component_nss_build = {
    "script" : string
    "depends" ? string
    "active" ? boolean
};

type component_nss_build_dbs = {
    "db" ? component_nss_build
    "nis" ? component_nss_build
    "compat" ? component_nss_build
    "dns" ? component_nss_build
    "files" ? component_nss_build
    "ldap" ? component_nss_build
};

type component_nss_db = string[];

type component_nss_type = {
    include structure_component
    "build" ? component_nss_build_dbs
    "databases" : component_nss_db{}
};

bind "/software/components/nss" = component_nss_type;

